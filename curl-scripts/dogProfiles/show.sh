#!/bin/sh
# sh curl-scripts/dogProfiles/show.sh

TOKEN="1fc71b8ed525c6a0dddf7cadeef9eea4"


API="http://localhost:4741"
URL_PATH="/dogProfiles"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
