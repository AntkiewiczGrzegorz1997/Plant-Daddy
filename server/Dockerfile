FROM node:18 as build

WORKDIR /app-build

COPY package*.json ./

RUN npm install

RUN npm rebuild bcrypt --build-from-source


FROM node:18-alpine

WORKDIR /app

COPY --from=build /app-build/node_modules ./node_modules

COPY package*.json ./

RUN npm install

RUN npm uninstall bcrypt

RUN npm install bcrypt

COPY . ./

EXPOSE 3000

CMD ["node", "index.js"]