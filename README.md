# go-web-server
A simple web server written in Go

## Getting started
Clone this repository and navigate to the newly created directory:

```zsh
git clone https://github.com/danielhelfand/go-web-server.git
cd go-web-server
```

Build and run the Docker image:

```zsh
docker build -t go-web-server:latest .
docker run -p 8080:8080 go-web-server
```

The server will run on port 8080. Open a browser and go to [`localhost:8080`](http://localhost:8080) and you should see the following message:

```
Hi there, I love !
```

Your web server is running 🎉

By adding on to the URL path, you can get back different responses from the server. An example is http:/localhost:8080/go-web-server. This would respond back with:

`Hi there, I love go-web-server!`
