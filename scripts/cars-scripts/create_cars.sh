curl --include --request POST http://localhost:4741/cars \
  --header "Content-Type: application/json" \
  --data '{
    "car": {
      "make": "Mazda",
      "model": "Mazda6",
      "year": "2016",
      "color": "white"
    }
  }'
