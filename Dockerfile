# Official V2Ray image
FROM v2fly/v2fly-core:latest

# Security Fix: Naya user banayein (Northflank ki requirement ke mutabiq)
RUN adduser -D -u 10014 mohsin

# Config file copy karein
COPY config.json /etc/v2ray/config.json

# Permissions set karein taake mohsin user isay chala sakay
RUN chown -R mohsin:mohsin /etc/v2ray

# Ab system ko batayein ke 'mohsin' user use kare
USER 10014

# Port expose (Aapne 8080 rakha tha)
EXPOSE 8080

# V2Ray run command
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
