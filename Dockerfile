FROM teddysun/xray:latest

WORKDIR /root

# คัดลอก config
COPY config.json /root/config.json

# รัน Xray ด้วยคำสั่งที่ถูกต้อง
ENTRYPOINT ["xray"]
CMD ["run", "-c", "/root/config.json"]
