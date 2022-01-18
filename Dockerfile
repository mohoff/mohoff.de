FROM caddy:2.4.6

WORKDIR /srv

COPY mohoff.de .
COPY Caddyfile /etc/caddy/Caddyfile
