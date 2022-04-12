#!/bin/bash
# sh curl-scripts/dogProfiles/create.sh

NAME="Angel"
AGE="2 years and 3 months"
GENDER="Female"
TYPE="Labrador"
NOTES="She likes peanut butter."
TOKEN="1fc71b8ed525c6a0dddf7cadeef9eea4"

API="http://localhost:4741"
URL_PATH="/dogProfiles"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
