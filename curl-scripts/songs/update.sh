curl "http://localhost:4741/song/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{

"song": {
  "rating": "'"${RATING}"'"

    }
  }'

echo
