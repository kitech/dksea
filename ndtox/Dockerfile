# FROM base/archlinux
FROM kitech/archlinux

MAINTAINER yatseni <yatseni@gmail.com>

# ADD . /tmp/buildroot
ADD . /

# RUN /tmp/buildroot/bootstrap.sh
RUN  /bootstrap.sh

VOLUME ["/root/.config"]

EXPOSE 33445/udp 33445 443 80 3389

ENTRYPOINT ["/entrypoint.sh"]

CMD ["ndtox"]


### readme
### just docker run somehere
###

