# curl --include --request POST http://localhost:4741/cars \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=${TOKEN}" \
#   --data '{
#     "car": {
#       "user_id": "1",
#       "make": "Mazda",
#       "model": "Mazda6",
#       "year": "2016",
#       "color": "white"
#     }
#   }'
#

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/cars"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "car": {
        "make": "'"${MAKE}"'",
        "model": "'"${MODEL}"'",
        "year": "'"${YEAR}"'",
        "color": "'"${COLOR}"'"
      }
    }'

  echo
