docker build -t reactapp .
docker run --rm -it \
  -v ${PWD}:/app \
  -v /app/node_modules \
  -p 3000:3000 \
  reactapp npm run start
