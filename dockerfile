FROM node:16-alpine

RUN mkdir -p /app

WORKDIR /app

COPY package*.json /app

RUN npm install --legacy-peer-deps

COPY . /app

RUN npm run build 

EXPOSE 4200

ENTRYPOINT ["npm", "start"]
