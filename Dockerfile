ARG ALPINE_IMAGE_TAG="3.11.6"

# --- base ---------------------------------------------------------------------
FROM alpine:${ALPINE_IMAGE_TAG}

RUN set -x \
    && apk update \
    && apk add --no-cache \
        ansible \
        curl \
        git \
        make \
        openssl \
        python3 \
        unzip
