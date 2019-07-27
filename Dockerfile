FROM alpine
RUN apk -U add tinyproxy && \
    rm -rf /var/cache/apk/*
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf
USER tinyproxy
ENTRYPOINT ["/usr/bin/tinyproxy", "-d", "-c", "/etc/tinyproxy/tinyproxy.conf"]
