
FROM golang:1.13.8 as builder
ENV GO111MODULE=on
WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .

# ENV DB_USER="root"
# ENV DB_PASSWORD="password1!"
# ENV DB_HOST="host.docker.internal"
# ENV DB_NAME="mysqldb"
# ENV REDIS_ENDPOINT="host.docker.internal:6379"

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app
RUN groupadd -r app && useradd --no-log-init -r -g app appuser
USER appuser

FROM alpine:3.11
COPY --from=builder /app/app /bin/app
ENTRYPOINT ["/bin/app"]
