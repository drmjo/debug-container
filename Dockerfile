FROM buildpack-deps:stretch-curl

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y; \
  apt-get install -y \
    tcptraceroute \
    traceroute \
    dnsutils \
    netcat-openbsd \
    nmap \
    tcpdump \
    tshark \
    git \
    make \
    jq; \
  apt-get autoclean; \
  apt-get autoremove
