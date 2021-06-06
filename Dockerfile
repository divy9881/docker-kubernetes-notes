# Get a base image
FROM alpine

# Set working directory in container
WORKDIR /usr/app

ENV var=value

EXPOSE <port>

# Install dependencies
RUN apk add --update redis
COPY . .
RUN npm install

# Container start-up commands
CMD ["redis-server"]