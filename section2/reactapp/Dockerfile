FROM node:13.12.0 as dev
WORKDIR /app
COPY . .
RUN npm install

FROM node:13.12.0 as build
WORKDIR /app
COPY --from=dev /app .
RUN npm run build

FROM node:13.12.0 as prod
# USER node
WORKDIR /app
COPY --from=build /app .
EXPOSE 3000
CMD ["npx", "serve", "./public", "-s", "-l", "3000"]
