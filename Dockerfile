FROM alpine
WORKDIR /usr/app
RUN apk --no-cache add curl\
  && echo -e '#!/bin/sh\n\
  while true; do\n\
    curl "https://api.dynu.com/nic/update?username=$USERNAME&password=$PASSWORD"\n\
    sleep "${INTERVAL:-600}"\n\
  done\
  ' > dynu.sh\
  && chmod +x dynu.sh
ENTRYPOINT ["/usr/app/dynu.sh"]
