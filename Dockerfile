FROM debian:buster

RUN apt -y update && apt -y dist-upgrade
RUN apt -y install  sane-utils imagemagick curl
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]


