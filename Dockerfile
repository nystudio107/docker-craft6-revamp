ARG TAG=2.8

FROM composer:$TAG

WORKDIR /app

ENV PATH="$PATH:/tmp/vendor/bin"

# Install packages
RUN set -eux; \
    composer global config bin-dir --absolute \
    && \
    composer global require craftcms/craft6-revamp -W

RUN ["chmod", "+x", "/docker-entrypoint.sh"]

CMD ["craft6-revamp"]
