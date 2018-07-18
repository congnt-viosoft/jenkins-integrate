#!/bin/bash
#USERNAME=
#PASSWORD=

git clone https://$USERNAME:$PASSWORD@github.com/viosoft-corp/dronava.git
cd dronava/components/openairinterface5g/cmake_targets/
git checkout feature_oai_light
./build_oai -I
./build_oai --fido-enb --arm-ap --enable-x2
