FROM node:16

WORKDIR /app

COPY ./example-frontend /app

RUN npm run build

RUN npm install -g serve

CMD serve -s -l 5000 build