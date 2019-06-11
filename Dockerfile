FROM alpine:3.9

RUN apk update && apk upgrade \
  && apk add --no-cache curl bash

RUN curl --silent --show-error --fail --location https://getcaddy.com | bash -s personal

WORKDIR /srv

COPY mohoff.de .
COPY Caddyfile /etc/Caddyfile

EXPOSE 8000
CMD ["caddy", "--conf", "/etc/Caddyfile", "--log", "stdout"]