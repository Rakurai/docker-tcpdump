FROM ubuntu:vivid

RUN apt-get update && apt-get install -y --no-install-recommends \
  tcpdump \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/dumps"]

WORKDIR /dumps

ENTRYPOINT ["tcpdump"]
