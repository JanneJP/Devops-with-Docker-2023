FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y curl

COPY search.sh .

RUN chmod +x search.sh

CMD ./search.sh