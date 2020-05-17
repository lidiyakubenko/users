FROM node:12

WORKDIR /usr/src/translations-nodejs

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]