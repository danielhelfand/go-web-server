FROM golang:1.26.1

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN go build -o go-web-server-binary ./...

EXPOSE 8080

USER 1001

CMD ["./go-web-server-binary"]
