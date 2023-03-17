FROM golang:1.16 as builder

WORKDIR /app

COPY ./example-backend /app

ENV REQUEST_ORIGIN=http://127.0.0.1

RUN CGO_ENABLED=0 go build
RUN useradd appuser
RUN chown appuser .

FROM scratch

WORKDIR /app

COPY --from=builder /app/server /app/server

COPY --from=builder /etc/passwd /etc/passwd

USER appuser

CMD ["/app/server"]