FROM node:16

WORKDIR /app

COPY ./example-frontend /app

RUN npm install

RUN npm install -g serve

RUN npm run build

CMD serve -s -l 5000 build