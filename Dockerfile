FROM teddysun/xray:latest

WORKDIR /root

COPY config.json /root/config.json
COPY start.sh /root/start.sh

# ให้สิทธิ์รัน
RUN chmod +x /root/start.sh

ENTRYPOINT ["/root/start.sh"]
