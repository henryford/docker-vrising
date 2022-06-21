FROM ubuntu:22.04 
LABEL maintainer="T Bueter"
VOLUME ["/mnt/vrising/server", "/mnt/vrising/persistentdata"]

ARG DEBIAN_FRONTEND="noninteractive"

COPY lib/setup_i386.sh /s1.sh
COPY lib/setup_steam.sh /s2.sh
COPY start.sh /start.sh

RUN chmod +x /start.sh /s1.sh /s2.sh

RUN /s1.sh
RUN /s2.sh

CMD ["/start.sh"]
