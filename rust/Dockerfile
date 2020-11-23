FROM rust:1.46 AS builder

WORKDIR /app

COPY Cargo.toml Cargo.toml
COPY Cargo.lock Cargo.lock
RUN cargo build --release

COPY ./src ./src
COPY ./templates ./templates

RUN cargo build --release
RUN strip ./target/release/poinsettia

FROM alpine:3.11
COPY --from=builder /app/target/release/poinsettia /bin/poinsettia
ENTRYPOINT ["/bin/poinsettia"]

