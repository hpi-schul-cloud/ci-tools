ARG ALPINE_IMAGE_TAG="3.11.6"

# --- stage:release ------------------------------------------------------------
FROM alpine:${ALPINE_IMAGE_TAG} as release

ARG BUILD_BRANCH
ARG BUILD_HASH

LABEL build.stage="release"
LABEL build.branch="${BUILD_BRANCH}"
LABEL build.hash="${BUILD_HASH}"

RUN set -x \
    && apk update \
    && apk add --no-cache \
        ansible \
        curl \
        git \
        make \
        openssh \
        openssl \
        python3 \
        unzip
