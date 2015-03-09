FROM phusion/baseimage:latest
MAINTAINER Reed Odeneal - "reed@laenedo.net"
ENV HOME /root
CMD ["/sbin/my_init"]

RUN apt-get -y update
RUN apt-get -y install wget zip libstdc++5
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://download.macromedia.com/pub/coldfusion/updates/11/downloads/ColdFusion_exp_11_WWEJ_linux64.zip -P /tmp/
RUN unzip /tmp/ColdFusion_exp_11_WWEJ_linux64.zip -d /

RUN mkdir -p /etc/my_init.d/
RUN echo "#! /bin/bash \\ncd /ColdFusion/cfusion/bin/ && sudo ./cfstart.sh" >> /etc/my_init.d/cfinit.sh
RUN chmod +x /etc/my_init.d/cfinit.sh

EXPOSE 8500