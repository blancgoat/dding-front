FROM node:19.8.1
WORKDIR /app
COPY package.json .
RUN npm install

COPY ./src /app/src
COPY ./public /app/public
EXPOSE 3000
CMD ["npm", "start"]