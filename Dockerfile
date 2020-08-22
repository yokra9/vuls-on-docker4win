FROM vuls/vuls

RUN apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["sh", "docker-entrypoint.sh", "vuls"]
