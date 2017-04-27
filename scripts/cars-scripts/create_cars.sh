curl --include --request POST http://localhost:4741/cars \
  --header "Content-Type: application/json" \
  --data '{
    "car": {
      "user_id": "1",
      "make": "Mazda",
      "model": "Mazda6",
      "year": "2016",
      "color": "white"
    }
  }'
