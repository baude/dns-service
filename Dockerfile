FROM docker.io/library/alpine:latest
RUN apk update && apk add dnsmasq
ENTRYPOINT ["dnsmasq", "-d", "--clear-on-reload", "-2", "-R", "--local-service", "-n", "--hostsdir=/etc/dnsmasqhosts/"]
LABEL RUN="podman run -dt --ip 10.88.0.2 -t -v /run/libpod/dns/:/etc/dnsmasqhosts/:Z IMAGE"
WORKDIR /
