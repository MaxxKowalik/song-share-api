curl "http://localhost:4741/song" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{

"song": {
  "artist": "'"${ARTIST}"'",
  "album": "'"${ALBUM}"'",
  "rating": "'"${RATING}"'"

    }
  }'

echo
