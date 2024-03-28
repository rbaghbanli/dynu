FROM alpine
LABEL org.opencontainers.image.source=https://github.com/rbaghbanli/dynu
LABEL org.opencontainers.image.description="Container for Dynu DNS IP address update at regular interval"
LABEL org.opencontainers.image.licenses=MIT
WORKDIR /usr/app
RUN apk --no-cache add curl\
  && echo -e '#!/bin/sh\n\
  while true; do\n\
    curl "https://api.dynu.com/nic/update?username=$USERNAME&password=$PASSWORD&hostname=$HOSTNAME"\n\
    sleep "${INTERVAL:-600}"\n\
  done\
  ' > dynu.sh\
  && chmod +x dynu.sh
ENTRYPOINT ["/usr/app/dynu.sh"]
