#!/usr/bin/env bash

TO_EMAIL=$1
DOMAIN=$2

[ -z "$EXPIRY" ] && EXPIRY="is about to expire"

FROM_EMAIL="no-reply@olivr.com"
FROM_NAME="Oliv'r"
SUBJECT="$DOMAIN $EXPIRY!"
BODY_TEXT="Your domain $DOMAIN $EXPIRY! \nYou should follow the instructions at https://github.com/Olivr/free-domain if you would like to renew it."
BODY_HTML="<p>Your domain <strong>$DOMAIN</strong> $EXPIRY</p> <p>You should follow the instructions at <a href=\\\"https://github.com/Olivr/free-domain\\\">https://github.com/Olivr/free-domain</a> if you would like to renew it."

RESPONSE=$(curl --silent --request POST \
  --url https://api.sendgrid.com/v3/mail/send \
  --header "Authorization: Bearer $SENGRID_API_KEY" \
  --header 'Content-Type: application/json' \
  --data '{"personalizations": [{"to": [{"email": "'"$TO_EMAIL"'"}]}],"from": {"email": "'"$FROM_EMAIL"'", "name": "'"$FROM_NAME"'"},"subject": "'"$SUBJECT"'","content": [{"type": "text/plain", "value": "'"$BODY_TEXT"'"}, {"type": "text/html", "value": "'"$BODY_HTML"'"}], "tracking_settings": {"open_tracking": {"enable": true}, "click_tracking": {"enable": false, "enable_text": false}}}' | jq .errors)

[ -z "$RESPONSE" ] && echo "Email sent for $DOMAIN!" || (echo "Error sending email for $DOMAIN ($TO_EMAIL)." && exit 1)