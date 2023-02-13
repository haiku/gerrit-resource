VERSION=0.0.1
default:
	go get
	go build
	docker build -t docker.io/haiku/gerrit-resource:$(VERSION) .
clean:
	go clean
	docker image rm docker.io/haiku/gerrit-resource:$(VERSION)
push:
	docker push docker.io/haiku/gerrit-resource:$(VERSION)
