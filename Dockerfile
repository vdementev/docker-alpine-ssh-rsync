FROM alpine:latest
RUN apk update && \
    apk upgrade && \
    apk add openssh-client \
    ca-certificates \
    rsync && \
    rm -rf /var/cache/apk/*
