FROM rust:1.43 AS builder

WORKDIR /todo

COPY Cargo.toml Cargo.toml

RUN mkdir src && echo "fn main() {}" > src/main.rs
RUN cargo build --release

COPY ./src ./src
COPY ./templates ./templates

RUN rm -f target/release/deps/todo*
RUN cargo build --release


FROM alpine:3.11
COPY --from=builder /todo/target/release/todo /bin/app
ENTRYPOINT ["/bin/app"]
