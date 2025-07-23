FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY ./app ./app

WORKDIR /app/app

EXPOSE 3000  

CMD ["node", "server.js"]

