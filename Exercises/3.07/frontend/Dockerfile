FROM node:16-alpine

WORKDIR /app

COPY ./example-frontend /app

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80/api

RUN npm install && \
    npm install -g serve && \
    npm run build && \
    addgroup -S appgroup && \
    adduser -S appuser -G appgroup && \
    chown appuser .

USER appuser

CMD serve -s -l 5000 build