FROM openjdk:8

WORKDIR /app

COPY ./spring-example-project /app

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar