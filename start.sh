#!/bin/sh

PORT=${PORT:-8080}

echo "Starting Xray on port $PORT"

# แทนที่ port ใน config
sed -i "s/\"port\": [0-9]*/\"port\": $PORT/" /root/config.json

# รัน Xray แบบ foreground (สำคัญมาก)
exec xray run -c /root/config.json
