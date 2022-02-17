#!/usr/bin/env bash

# This script should be called from the root of the repo
# Example usage:
# export DATE=$(date -v-1y)
# ./scripts/expired.sh

for ZONE in zones/*.yaml
do
  git blame -te "$ZONE" --since="$DATE" | awk -e '($1 !~ /^\^/ || $6 ~ /^#/) {$1=$2=$3=$4=$5=""; print substr($0,6)}' > "$ZONE.temp" && mv "$ZONE.temp" "$ZONE"
done
