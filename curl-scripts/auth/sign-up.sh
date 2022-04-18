#!/bin/bash
# sh curl-scripts/auth/sign-up.sh

EMAIL="sako@house.com"
PASSWORD="hello"


API="https://cryptic-shore-49973.herokuapp.com"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo

# token - 6255d62ccd761170534ce41b