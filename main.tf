# ---------------------------------------------------------------------------------------------------------------------
# Providers
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~> 1.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "2.26.1"
    }
  }
}


# ---------------------------------------------------------------------------------------------------------------------
# Required inputs
# These parameters must be specified.
# ---------------------------------------------------------------------------------------------------------------------
variable "zones" {
  description = "Each zone id and their associated domain name."
  type        = map(string)
  default     = {}
}

# ---------------------------------------------------------------------------------------------------------------------
# Resources
# ---------------------------------------------------------------------------------------------------------------------
resource "cloudflare_record" "all" {
  for_each = local.zones_to_add

  zone_id = each.value.zone_id
  name    = each.value.subdomain
  value   = each.value.ns_record
  type    = "NS"
  proxied = false
}

# ---------------------------------------------------------------------------------------------------------------------
# Computations
# ---------------------------------------------------------------------------------------------------------------------
locals {
  zones_to_add = merge(flatten([for zone_id, domain in var.zones :
    [for subdomain, ns_records in yamldecode(file("${domain}.yaml")) :
      { for ns_record in ns_records :
        "${domain}_${subdomain}_${ns_record}" => {
          zone_id   = zone_id
          subdomain = subdomain
          ns_record = ns_record
        }
      }
    ]
  ])...)
}

# ---------------------------------------------------------------------------------------------------------------------
# Outputs
# ---------------------------------------------------------------------------------------------------------------------
output "all" {
  description = "All records for all domains."
  value = { for id, domain in var.zones :
    domain => { for subdomain, ns_records in yamldecode(file("${domain}.yaml")) :
      "${subdomain}.${domain}" => { for ns_record in ns_records :
        ns_record => {
          created  = cloudflare_record.all["${domain}_${subdomain}_${ns_record}"].created_on
          modified = cloudflare_record.all["${domain}_${subdomain}_${ns_record}"].modified_on
        }
      }
    }
  }
}
