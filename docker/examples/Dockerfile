FROM alpine:latest AS alpine
RUN apk add --update --no-cache openssl
RUN yes '' | openssl req -x509 -sha256 -nodes -days 10000 -keyout /etc/ssl/self-signed.key -out /etc/ssl/self-signed.crt 2> /dev/null

FROM nginx:stable-alpine AS nginx
COPY --from=alpine /etc/ssl/ /etc/ssl/
