#!/usr/bin/env bash

# This script should be called from the root of the repo
# Example usage:
# export DATE=$(date -v-1y -v+1m)
# export EXPIRY="will expire in 1 month"
# ./scripts/expiring.sh

for ZONE in zones/*.yaml
do
  TLD_TEMP=${ZONE#*/}
  TLD=${TLD_TEMP%.*}
  EXPIRING_LINES=$(git blame -te "$ZONE" -L/^[^\#]/ --since="$DATE" | awk -e '$1 ~ /^\^/ {l=substr($5,1,length($5)-1); print l","l}')

  for line in ${EXPIRING_LINES[*]}
  do
    COMMITTER_INFO=$(git blame --line-porcelain "$ZONE" -L"$line" | grep -E '^(author-mail)?[[:space:]]' | tr '\n' ' ' | awk -e '{gsub(/[ :]/, "", $3); printf "%s %s.'"$TLD"'", substr($2,2,length($2)-2), $3}')
    echo "${COMMITTER_INFO[@]}" | xargs ./scripts/mail.sh
    unset COMMITTER_INFO
  done

done
