FROM ubuntu

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.8.0/s6-overlay-amd64.tar.gz /tmp/
RUN gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C /

ADD s6example /
EXPOSE 3000

ENTRYPOINT [ "/init" ]
CMD ["/s6example"]
