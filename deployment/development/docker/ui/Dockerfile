FROM node:latest

WORKDIR /app

COPY nfl-angular-ui/package*.json nfl-angular-ui/ts*.json nfl-angular-ui/angular.json ./

RUN npm install

COPY nfl-angular-ui .

EXPOSE 4200