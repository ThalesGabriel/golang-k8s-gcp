FROM golang:1.16

COPY . .

RUN go build main.go

RUN go mod init github.com/ThalesGabriel/golang-k8s-gcp

EXPOSE 8080

ENTRYPOINT ["./main"]