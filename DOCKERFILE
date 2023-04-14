FROM node:latest

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY . /usr/app

RUN npm install
RUN npm run build

EXPOSE 3001

CMD [ "node" , "dist/index.js"]
