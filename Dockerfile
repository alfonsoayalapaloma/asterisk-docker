FROM ubuntu:18.04
MAINTAINER Alfonso Ayala <alfonsoayalapaloma@gmail.com>
ENV build_date 2023-05-28

WORKDIR /tmp
RUN apt-get update && \
    apt-get install asterisk -y 

COPY files/default-conf.tgz files/init.sh /tmp/

VOLUME ["/etc/asterisk", "/var/spool/asterisk", "/var/log/asterisk"]

CMD ["/bin/bash", "/tmp/init.sh"]
