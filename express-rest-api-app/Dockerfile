# set node:alpine as base image
FROM node:alpine

# set working directory
WORKDIR /apps/express-rest-api-app

# copy file-system to app's container file-system
COPY package.json .
RUN npm install -g npm
RUN npm install
COPY . .

# start-up command
CMD npm start