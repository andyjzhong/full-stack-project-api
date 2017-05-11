#TOKEN='BAhJIiUwZDI2OTVmZjFhMjY4NTYxNDM3MDYyMDIzZjczNjA4YwY6BkVG--c03008e6c7f79e5872cef497c1367473d0a87561' MAKE='make-test' MODEL='model-test' COLOR='color-test' sh scripts/cars-scripts/create_cars.sh

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
