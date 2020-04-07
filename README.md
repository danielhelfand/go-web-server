# go-web-server
A simple web server written in Go. Credit to the Go documentation [Writing Web Applications](https://golang.org/doc/articles/wiki/) for the example.

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

`Hi there, I love !`

Your web server is running 🎉

By adding on to the URL path, you can get back different responses from the server. An example is `http:/localhost:8080/go-web-server`. This would respond back with:

`Hi there, I love go-web-server!`

## Deploy to Kubernetes

Included in this example is a file named [`k8s.yaml`](k8s.yaml) that includes a Kubernetes [`Deployment`](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) and [`Service`](https://kubernetes.io/docs/concepts/services-networking/service/) that can be used to deploy this application to a Kubernetes cluster.

The following `kubectl` command can be run to deploy go-web-server to Kubernetes:

```zsh
kubectl apply -f https://raw.githubusercontent.com/danielhelfand/go-web-server/master/k8s.yaml
```

Verify the Deployment was created by running the following command:

```zsh
kubectl get deployment go-web-server-deployment
```

When the `READY` column from the output indicates `2/2` as shown below, the Deployment is ready and can be accessed via its associated Service:

```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
go-web-server-deployment   2/2     2            2           11s
```

To use the deployed go-web-server, run the following command:

```zsh
kubectl port-forward svc/go-web-server-service 8080:8080
```

go-web-server should then be available at [`localhost:8080`](http://localhost:8080).
