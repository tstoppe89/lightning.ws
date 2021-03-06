#!/bin/bash

docker run -d \
    --name caddy \
    --link ln-ws-api \
    -v $(pwd)/Caddyfile:/etc/Caddyfile \
    -v $HOME/.caddy:/root/.caddy \
    -v $(pwd)/www:/srv/www \
    -p 80:80 -p 443:443 \
    abiosoft/caddy
