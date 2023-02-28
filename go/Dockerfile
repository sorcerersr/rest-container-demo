FROM golang:alpine3.17 AS build-stage
  
RUN addgroup -S gouser && adduser -S -g -D -H -s /sbin/nologin -G gouser gouser
 
WORKDIR /build
 
COPY ./ .
 
RUN go build -ldflags "-s -w" ./rest_demo.go
 
      
FROM alpine:3.17
 
# copy user from build stage
COPY --from=build-stage /etc/passwd /etc/passwd
COPY --from=build-stage /etc/group /etc/group
 
WORKDIR /app
 
# copy artifact from build stage
COPY --from=build-stage /build/rest_demo ./
 
# use an unprivileged user to run the service
USER gouser:gouser
 
CMD ["/app/rest_demo"]
     
