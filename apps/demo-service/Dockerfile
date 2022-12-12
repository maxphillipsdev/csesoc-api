FROM node:lts-alpine

WORKDIR /app

COPY package.json ./

COPY . .
RUN yarn install
RUN yarn build

EXPOSE 8080

CMD ["yarn", "start"]
