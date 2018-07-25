FROM shark.viosoft.com/dronava/oaisim_ue_toolchain:1
USER root
ADD id_rsa_dronava* /
RUN eval "$(ssh-agent -s)" && ssh-add /id_rsa_dronava && \
    mkdir ~/.ssh/ && ssh-keyscan -H github.com >> ~/.ssh/known_hosts && \
    git clone git@github.com:viosoft-corp/dronava.git
RUN cd dronava/components/openairinterface5g/cmake_targets/ && git checkout feature_oai_light && ./build_oai -I
