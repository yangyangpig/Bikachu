FROM ubuntu:latest
COPY ./update_apt_source.sh /bin/
USER root
RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
RUN chmod +x /bin/update_apt_source.sh && sh /bin/update_apt_source.sh
RUN apt-get -y install fortune
