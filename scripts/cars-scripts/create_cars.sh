curl --include --request POST http://localhost:4741/cars \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=d442583ddbaf5c9b3c16dc4cb622142a" \
  --data '{
    "car": {
      "user_id": "1",
      "make": "Mazda",
      "model": "Mazda6",
      "year": "2016",
      "color": "white"
    }
  }'
