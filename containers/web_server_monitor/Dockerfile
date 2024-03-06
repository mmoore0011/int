FROM alpine
RUN apk add --no-cache netcat-openbsd
COPY src/web_monitor.sh /usr/local/bin
ENTRYPOINT /usr/local/bin/web_monitor.sh
