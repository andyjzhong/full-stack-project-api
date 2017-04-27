curl --include --request PATCH http://localhost:4741/cars/1 \
  --header "Content-Type: application/json" \
  --data '{
    "car": {
      "make": "Nissan",
      "model": "Altima",
      "year": "2010",
      "color": "silver"
    }
  }'
