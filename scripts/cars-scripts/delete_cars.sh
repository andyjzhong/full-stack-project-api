#TOKEN='BAhJIiVmZTIzYjE3Yzk0ZTlkMWQ5MWViOGYzZjI4ZGU4NTRjZQY6BkVG--dc83f3b548c81a228d35ab27215bda1ca95a9932' ID=42 sh scripts/cars-scripts/delete_cars.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json"

  echo
