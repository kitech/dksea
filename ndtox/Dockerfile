# FROM base/archlinux
FROM kitech/archlinux

MAINTAINER yatseni <yatseni@gmail.com>

# ADD . /tmp/buildroot
ADD . /

# RUN /tmp/buildroot/bootstrap.sh
RUN  /bootstrap.sh

VOLUME ["/root/.config"]

EXPOSE 33445/udp 33445 443 80 3389 8070 8050

ENTRYPOINT ["/entrypoint.sh"]

CMD ["toxbs"]


### readme
### just docker run somehere
###

