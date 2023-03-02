FROM node:18.14.2-alpine3.17

RUN addgroup -S nodeuser && adduser -S -g -D -H -s /sbin/nologin -G nodeuser nodeuser

WORKDIR /app
 
COPY ./ .
 
RUN npm install 

CMD ["node", "rest_demo.js"]
