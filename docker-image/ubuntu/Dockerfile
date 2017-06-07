FROM ubuntu:17.04

ADD rootfs.tar.gz /rootfs/

RUN /rootfs/install.sh

CMD ["bash", "--init-file", "/root/.bash_profile"]

