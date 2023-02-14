# Compile resources
FROM docker.io/golang:alpine3.17 AS gerrit-builder

RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src
COPY . .
RUN ls -lah . && cd gerrit && go get && go build

##################################
# Build final containers
FROM docker.io/alpine:3.17

RUN apk add git

WORKDIR /opt/resource
COPY --from=gerrit-builder /usr/local/src/gerrit .
RUN chmod +x gerrit
RUN ln -s gerrit check
RUN ln -s gerrit in
RUN ln -s gerrit out
