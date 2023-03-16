FROM docker

RUN apk update

RUN apk add git

RUN apk add bash

WORKDIR /app

COPY ./publish.sh .

RUN chmod +x ./publish.sh

ENTRYPOINT ["/bin/bash", "/app/publish.sh"]
