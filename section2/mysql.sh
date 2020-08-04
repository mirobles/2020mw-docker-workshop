
docker network create wordpress
docker run --rm \
  --network wordpress \
  --name mysql \
  -e MYSQL_ROOT_PASSWORD=my-secret-pw \
  -e MYSQL_DATABASE=wordpress \
  -p 3306:3306 \
  mysql
