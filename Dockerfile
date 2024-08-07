FROM golang:1.22.5

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN go build -o go-web-server-binary ./...

EXPOSE 8080

USER 1001

CMD ["./go-web-server-binary"]
