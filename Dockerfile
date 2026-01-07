# Official V2Ray image use karein (Build error se bachne ke liye)
FROM v2fly/v2fly-core:latest

# Config file ko sahi jagah copy karein
COPY config.json /etc/v2ray/config.json

# Port 8080 expose karein (Koyeb/Choreo/Northflank ke liye standard hai)
EXPOSE 8080

# V2Ray run karne ki command
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
