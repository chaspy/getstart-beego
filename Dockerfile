FROM golang:1.11.2-stretch
ENV GOPATH /go
ENV PORT

RUN go get -u github.com/golang/dep/cmd/dep

WORKDIR /go/src/github.com/chaspy/todo/
ADD . /go/src/github.com/chaspy/todo/

RUN dep ensure

CMD ["go", "run", "main.go"]
EXPOSE 8080
