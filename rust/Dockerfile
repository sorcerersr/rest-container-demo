    FROM rust:alpine3.17 AS build-stage
     
    RUN rustup target add x86_64-unknown-linux-musl
    RUN apk add --no-cache musl-dev
     
    RUN addgroup -S rustuser && adduser -S -g -D -H -s /sbin/nologin -G rustuser rustuser
     
    WORKDIR /build
     
    COPY ./ .
     
    RUN cargo build --target x86_64-unknown-linux-musl --release
     
          
    FROM alpine:3.17
     
    # copy user from build stage
    COPY --from=build-stage /etc/passwd /etc/passwd
    COPY --from=build-stage /etc/group /etc/group
     
    WORKDIR /app
     
    # copy artifact from build stage
    COPY --from=build-stage /build/target/x86_64-unknown-linux-musl/release/rust-rest-demo ./
     
    # use an unprivileged user to run the service
    USER rustuser:rustuser
     
    CMD ["/app/rust-rest-demo"]
     