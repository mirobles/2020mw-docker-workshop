docker build -t reactapp .
docker run --rm \
  -v ${PWD}:/app \
  -v /app/node_modules \
  -p 3000:3000 \
  reactapp
