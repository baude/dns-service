FROM docker.io/library/alpine:latest
RUN apk update && apk add dnsmasq
ENTRYPOINT ["dnsmasq", "-d", "--clear-on-reload", "-2", "-R", "--local-service", "-n", "--hostsdir=/etc/dnsmasqhosts/"]
WORKDIR /
