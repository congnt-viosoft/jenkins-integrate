FROM ubuntu:16.04
RUN apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install qemu qemu-user-static qemu-system-arm vim build-essential git wget -y;
COPY build_docker_env.sh /root/
COPY make_inside.sh /root/
RUN /bin/bash /root/build_docker_env.sh
