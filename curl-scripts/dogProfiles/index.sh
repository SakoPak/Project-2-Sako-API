#!/bin/sh
# sh curl-scripts/dogProfiles/index.sh

TOKEN="1fc71b8ed525c6a0dddf7cadeef9eea4"

API="https://cryptic-shore-49973.herokuapp.com"
URL_PATH="/dogProfiles"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
