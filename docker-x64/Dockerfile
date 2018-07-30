FROM oaisim_ue_toolchain
RUN apt-get update && apt-get install -y --no-install-recommends \
    autoconf \
    automake \
    bison \
    build-essential \
    cmake \
    flex \
    pkg-config \
    python \
    libxml2-dev \
    nettle-dev \
    libsctp-dev \
    libgcrypt-dev \
    libconfig8-dev \
    libssl-dev \
    libxslt1-dev \
    libpgm-dev \
    libforms-dev \
    libblas-dev \
    libatlas-dev \
    libatlas-base-dev \
    castxml \
    git \
    wget \
    ca-certificates \
    libtool \
    libmysqlclient-dev \
    libidn11-dev \
    check \
    libmnl-dev \
    libgnutls-dev \
    sudo \
    psmisc \
    libyaml-dev \
    nmap \
    iproute2 \
    net-tools \
    iputils-ping \
    iptables \
    kmod \
    tcpdump \
    lsb-release \
    software-properties-common \
    vim \
    gdb \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && echo "[http]\n\tsslVerify = true\n\tslCAinfo = /etc/ssl/certs/ca-certificates.crt\n" >> ~/.gitconfig

RUN apt-get install -y openssh-client

ADD asn1c/ /tmp/asn1c/
RUN cd /tmp/asn1c \
    && ./configure --prefix=/usr/local \
    && make -j`nproc` \
    && make install \
    && cd /tmp \
    && rm -rf /tmp/asn1c
USER root
ADD id_rsa_dronava* /
