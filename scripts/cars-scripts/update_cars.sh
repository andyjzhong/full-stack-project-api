#TOKEN='BAhJIiU1NGFlMjBiMTc1Zjc5MWM0NThjYjc4YjE4ZjFmMTJkNwY6BkVG--df994ce49dfd868741cdd91af6c97e9e357ef060' ID=42 MAKE='make-test' MODEL='model-test' COLOR='UPDATE-TEST' sh scripts/cars-scripts/update_cars.sh

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/cars/$ID"
  curl "${API}${URL_PATH}" \
    --include \
    --request PATCH \
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
