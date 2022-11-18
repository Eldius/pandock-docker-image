FROM pandoc/latex:latest-alpine

RUN apk add --no-cache \
    ttf-dejavu \
    make
