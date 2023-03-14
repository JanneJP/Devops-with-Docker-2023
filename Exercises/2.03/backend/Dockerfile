FROM golang:1.16

WORKDIR /app

COPY ./example-backend /app

ENV REQUEST_ORIGIN=http://127.0.0.1:5000

RUN go build

CMD ./server