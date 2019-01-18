FROM  node:10.13.0-alpine
LABEL maintainer="Manuel Cepeda <manuel_cepeda@claro.com.do>" \
    version="v1.0.0" \
    stage="development"

RUN mkdir -p /usr/src/app/client/
WORKDIR /usr/src/app

COPY package.json package.lock ./
RUN npm install

COPY server.js ./
COPY /client ./client

EXPOSE 3000

CMD ["npm", "start"]