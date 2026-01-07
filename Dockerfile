FROM v2fly/v2fly-core:latest

# Config file copy karein
COPY config.json /etc/v2ray/config.json

# Render/Hugging Face ke liye port (Render par aap koi bhi port rakh sakte hain, lets keep 8080)
EXPOSE 8080

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
