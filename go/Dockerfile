
FROM golang:bullseye
RUN mkdir /app
COPY go.mod /app/go.mod
COPY go.sum /app/go.sum
COPY rest_demo.go /app/rest_demo.go
WORKDIR /app
RUN go run ./rest_demo.go



