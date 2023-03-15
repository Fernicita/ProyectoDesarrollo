FROM ubuntu:latest
COPY app.sh /opt/

ENTRYPOINT ["/bin/bash", "/opt/app.sh"]
