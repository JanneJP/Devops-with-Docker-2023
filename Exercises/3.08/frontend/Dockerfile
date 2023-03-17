FROM node:16-alpine as builder

WORKDIR /app

COPY ./example-frontend /app

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80/api

RUN npm install && \
    npm run build

FROM node:16-alpine

WORKDIR /app

RUN npm install -g serve && \
    addgroup -S appgroup && \
    adduser -S appuser -G appgroup && \
    chown appuser .

USER appuser

COPY --from=builder /app/build /app/build

CMD serve -s -l 5000 build