FROM alpine:3.17 AS build-stage
     
RUN apk --no-cache add \
  musl-dev build-base git
     
RUN addgroup -S vuser && adduser -S -g -D -H -s /sbin/nologin -G vuser vuser
 
RUN git clone https://github.com/vlang/v /opt/vlang

WORKDIR /opt/vlang

RUN make

WORKDIR /build
 
COPY ./ .
 
RUN /opt/vlang/v rest_demo.v

RUN ls -alh
 
      
FROM alpine:3.17

RUN apk add --no-cache libatomic
 
# copy user from build stage
COPY --from=build-stage /etc/passwd /etc/passwd
COPY --from=build-stage /etc/group /etc/group
 
WORKDIR /app
 
# copy artifact from build stage
COPY --from=build-stage /build/rest_demo ./
 
# use an unprivileged user to run the service
USER vuser:vuser
 
CMD ["/app/rest_demo"]
     