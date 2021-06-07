FROM node:alpine as build

WORKDIR /apps/my-react-app

COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:stable

COPY --from=build /apps/my-react-app/build /usr/share/nginx/html/
