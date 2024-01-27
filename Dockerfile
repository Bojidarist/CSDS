FROM ubuntu:mantic

EXPOSE 27015/udp

COPY files/ /files/
COPY --chmod=755 scripts/ /scripts/
RUN mkdir -p /server

WORKDIR /server/hlds
ENTRYPOINT ["/scripts/run.sh"]
