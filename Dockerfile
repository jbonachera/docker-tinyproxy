FROM alpine
RUN apk -U add tinyproxy && \
    rm -rf /var/cache/apk/*
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf
ENTRYPOINT ["/usr/sbin/tinyproxy", "-d", "-c", "/etc/tinyproxy/tinyproxy.conf"]
