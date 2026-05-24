#!/bin/sh

# ใช้ PORT จาก Railway
if [ -z "$PORT" ]; then
  PORT=8080
fi

# แทนที่ port ใน config
sed -i "s/\"port\": 8080/\"port\": $PORT/" /root/config.json

echo "Starting Xray on port $PORT"

# รัน Xray
exec xray run -c /root/config.json
