FROM caddy:2.1.1

WORKDIR /srv

COPY mohoff.de .
COPY Caddyfile /etc/caddy/Caddyfile
