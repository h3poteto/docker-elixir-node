FROM ghcr.io/h3poteto/elixir:1.15.1-slim

USER root

RUN set -ex && \
    apt-get update && \
    apt-get install -y gnupg2 && \
    curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

USER elixir
