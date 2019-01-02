FROM python:3-alpine

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

# Copy scripts, etc
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

# Volume
VOLUME ["/srv/data"]

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    su-exec \
    tini \
    bash \
    && chmod +x /usr/local/bin/entrypoint.sh \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade sphinx_sitemap \
    && pip3 install --no-cache-dir --upgrade ablog

WORKDIR /srv/data

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

EXPOSE 8000
