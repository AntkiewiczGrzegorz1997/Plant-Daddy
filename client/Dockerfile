FROM node:14-alpine

ENV NODE_ENV development

WORKDIR /client

COPY client/package.json client/package-lock.json

RUN npm install

COPY client ./

EXPOSE 3001

RUN npm start

