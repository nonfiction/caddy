FROM caddy:2.4.3-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/mastercactapus/caddy2-proxyprotocol@v0.0.2 \
    --with github.com/darkweak/souin/plugins/caddy@64790e7 \
    --with github.com/hairyhenderson/caddy-teapot-module@v0.0.3-0

FROM caddy:2.4.3-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

RUN apk -u add curl
