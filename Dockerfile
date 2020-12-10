FROM golang:1.12.4-alpine3.9

RUN mkdir /app
COPY main.go /app/main.go
WORKDIR /app

EXPOSE 8080

ENTRYPOINT go run main.go