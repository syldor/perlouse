#!/bin/bash
set -e

# Run this in your Hugo blog repo directory

DISTRIBUTION_ID=ERZFACL5XTPVV
BUCKET_NAME=perlousepigalle.fr
PROFILE=alexis # or `default` if you don't use profiles

# Copy over pages - not static js/img/css/downloads
aws s3 sync --profile ${PROFILE} --acl "public-read" --sse "AES256" ./ s3://${BUCKET_NAME}/ --exclude '.git/*'
