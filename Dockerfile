FROM golang:1.12-alpine
RUN apk add git
RUN mkdir /go/proxy
COPY * /go/

WORKDIR /go/
RUN GOBIN=$GOPATH/bin go get
EXPOSE 1080
CMD ["go","run","server.go"]
