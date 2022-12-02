FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /webapp

EXPOSE 8080

ENTRYPOINT ["/webapp"]
