ARG TAG=2.8

FROM composer:$TAG

WORKDIR /app

# Install packages
RUN set -eux; \
    composer global require craftcms/craft6-revamp

RUN ["chmod", "+x", "/docker-entrypoint.sh"]

CMD ["craft6-revamp"]
