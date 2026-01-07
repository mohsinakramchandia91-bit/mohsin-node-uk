# Official V2Ray image
FROM v2fly/v2fly-core:latest

# Security Fix: Non-root user (Northflank requirement)
RUN adduser -D -u 10014 mohsin

# Config file copy karein
COPY config.json /etc/v2ray/config.json

# Permissions set karein
RUN chown -R mohsin:mohsin /etc/v2ray

# User switch karein
USER 10014

# Port 8080 expose karein
EXPOSE 8080

# Pehle purana entrypoint clear karen
ENTRYPOINT []

# Ab poori command khud likhen
CMD ["/usr/bin/v2ray", "run", "-c", "/etc/v2ray/config.json"]
