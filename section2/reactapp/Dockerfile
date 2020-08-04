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
COPY --from=build /app/build .
RUN npm run build
EXPOSE 3000
CMD ["npx", "serve", "-s", "-l", "3000"]
