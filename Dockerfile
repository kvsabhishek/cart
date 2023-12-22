FROM node:14

EXPOSE 8080

RUN addgroup -S robo && adduser -S robo robo

USER robo
WORKDIR /opt/server
COPY . .
RUN npm install

ENTRYPOINT ["node", "server.js"]