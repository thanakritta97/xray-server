FROM teddysun/xray:latest

WORKDIR /root

COPY config.json /root/config.json

ENTRYPOINT ["xray"]
CMD ["run", "-c", "/root/config.json"]
