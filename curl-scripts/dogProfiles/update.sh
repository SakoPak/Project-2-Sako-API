#!/bin/bash
# sh curl-scripts/dogProfiles/update.sh

NAME="Bruno"
AGE="6 years old"
GENDER="Male"
TYPE="Boxer"
NOTES="He likes bacon."
TOKEN="1fc71b8ed525c6a0dddf7cadeef9eea4"
ID="6255d6a4cd761170534ce41c"


API="http://localhost:4741"
URL_PATH="/dogProfiles"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "dog": {
      "name": "'"${NAME}"'",
      "age": "'"${AGE}"'",
      "gender": "'"${GENDER}"'",
      "type": "'"${TYPE}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
