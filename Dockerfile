FROM node:latest
RUN mkdir -p /app
WORKDIR /app
RUN npm install http-server -g
COPY . /app
CMD http-server -a 0.0.0.0 -p 8080
