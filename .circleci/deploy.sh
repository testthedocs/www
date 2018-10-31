#!/usr/bin/env bash
set -e # halt script on error

cd /root/website/build/public/
zip -r website.zip public

curl -H "Content-Type: application/zip" \
     -H "Authorization: Bearer $NETLIFYKEY" \
     --data-binary "@website.zip" \
     https://api.netlify.com/api/v1/sites/$API/deploys
