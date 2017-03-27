FROM alpine:latest
RUN apk --no-cache add bash curl
ADD curler.sh /
ENTRYPOINT /curler.sh
