#TOKEN='BAhJIiU5MzdjMThkZTE4YWNkYzgxZjliMTZmNjQxZTg5MzJmMAY6BkVG--1194c01333797f2943832ee73c1fcf7bb4673899' MAKE='make-test' MODEL='model-test' COLOR='color-test' sh scripts/cars-scripts/create_cars.sh

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
      "year": 2000,
      "color": "'"${COLOR}"'"
    }
  }'

  echo
