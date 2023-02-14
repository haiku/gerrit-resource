VERSION=0.0.3
default:
	docker build -t docker.io/haiku/gerrit-resource:$(VERSION) .
clean:
	go clean
	docker image rm docker.io/haiku/gerrit-resource:$(VERSION)
push:
	docker push docker.io/haiku/gerrit-resource:$(VERSION)
test:
	docker run docker.io/haiku/gerrit-resource:$(VERSION) /opt/resource/check
enter:
	docker run -it docker.io/haiku/gerrit-resource:$(VERSION) /bin/sh
