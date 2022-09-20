FROM alpine:latest as zulu_base
RUN apk add --no-cache wget && \
  wget -P /etc/apk/keys/ https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub && \
  echo "https://repos.azul.com/zulu/alpine" | tee -a /etc/apk/repositories && \
  apk update --no-cache && \
  apk del --no-cache wget