FROM teddysun/xray
COPY config.json /etc/xray/config.json
EXPOSE 80
CMD ["xray", "-config", "/etc/xray/config.json"]
