#!/bin/bash
# sh curl-scripts/auth/sign-in.sh

EMAIL="sako@house.com"
PASSWORD="hello"


API="https://cryptic-shore-49973.herokuapp.com"
URL_PATH="/sign-in"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
