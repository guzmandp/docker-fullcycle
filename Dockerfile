FROM golang:1.21-alpine as builder

WORKDIR /usr/src/app

COPY . .

RUN go mod download && go mod verify
RUN go build main.go

#RUN go build -v -o /usr/local/bin/app ./...

FROM scratch

COPY main.go . 

#CMD ["/usr/local/bin/app"]
CMD ["./main.go"]