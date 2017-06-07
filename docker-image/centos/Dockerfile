FROM centos:7.3.1611

ADD rootfs.tar.gz /rootfs/

RUN /rootfs/install.sh

CMD ["bash", "--init-file", "/root/.bash_profile"]

