docker run --rm \
  --network wordpress \
  --name wordpress \
  -p 80:80 \
  -e WORDPRESS_DB_NAME=wordpress \
  -e WORDPRESS_DB_PASSWORD=my-secret-pw \
  -e WORDPRESS_DB_USER=root \
  -e WORDPRESS_DB_HOST=mysql \
  wordpress
