FROM alpine:latest

RUN apk add --no-cache \
        libc6-compat
RUN mkdir -p /app
WORKDIR /app

ADD consignment.json /app/consignment.json
ADD consignment-cli /app/consignment-cli

CMD ["./consignment-cli"]