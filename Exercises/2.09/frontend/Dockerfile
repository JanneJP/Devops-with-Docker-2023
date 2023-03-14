FROM node:16

WORKDIR /app

COPY ./example-frontend /app

RUN npm install

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80/api

RUN npm run build

CMD serve -s -l 5000 build