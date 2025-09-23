ARG TAG=2.8

FROM composer:$TAG

WORKDIR /app

# Install packages
RUN set -eux; \
    composer global config bin-dir --absolute \
    && \
    export PATH="/tmp/vendor/bin:$PATH" \
    && \
    composer global require craftcms/craft6-revamp -W

RUN ["chmod", "+x", "/docker-entrypoint.sh"]

CMD ["craft6-revamp"]
