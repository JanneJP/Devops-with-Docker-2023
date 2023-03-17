FROM golang:1.16-alpine

WORKDIR /app

COPY ./example-backend /app

ENV REQUEST_ORIGIN=http://127.0.0.1

RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup && \
    go build && \
    chown appuser .

USER appuser

CMD ./server