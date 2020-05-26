FROM i386/ubuntu:18.04
MAINTAINER Muxa (gmska2011@gmail.com)

COPY u-trans-3_0_8.deb ./

RUN apt update && apt install sudo supervisor usbutils dialog apt-utils libc6:i386 libncurses5:i386 libstdc++6:i386 libssl1.0.0:i386 pcscd libpcsclite1:i386 -y
RUN mkdir -p /var/log/supervisor

COPY entrypoint.sh ./
RUN chmod +x entrypoint.sh
#####RUN /etc/init.d/supervisor start && sudo dpkg -i u-trans-3_0_8.deb

CMD ["/entrypoint.sh"]
