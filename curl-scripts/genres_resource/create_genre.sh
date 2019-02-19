curl "http://localhost:4741/create-genre" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "genre_name": "'"${GENRENAME}"'",
      "song_id": "'"${SONGID}"'"
    }
  }'

echo
