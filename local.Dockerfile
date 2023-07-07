# The alpine runner
FROM alpine:3 as lemmy

# Install libpq for postgres
RUN apk add --no-cache libpq

FROM clux/muslrust:1.70.0 as builder
WORKDIR /app
ARG CARGO_BUILD_TARGET=x86_64-unknown-linux-musl

# This can be set to release using --build-arg
ARG RUST_RELEASE_MODE="debug"

RUN cargo install cargo-watch
ENTRYPOINT cargo watch -x run
