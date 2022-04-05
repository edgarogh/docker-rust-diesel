ARG RUST_VERSION
ARG VARIANT

FROM rust:${RUST_VERSION} AS builder
ARG DIESEL_VERSION
RUN cargo install diesel_cli --version $DIESEL_VERSION

# Doesn't work, help wanted
#FROM rust:${RUST_VERSION}-alpine AS build-alpine
#ARG DIESEL_VERSION
#RUN apk add gcc libc-dev sqlite libpq mysql && cargo install diesel_cli --version $DIESEL_VERSION

FROM rust:${RUST_VERSION}
COPY --from=builder /usr/local/cargo/bin/diesel /usr/local/cargo/bin/diesel

#FROM rust:${RUST_VERSION}${VARIANT}
#ARG VARIANT
#COPY --from=builder${VARIANT} /usr/local/cargo/bin/diesel /usr/local/cargo/bin/diesel
