#!/bin/bash

git clone git@github.com:viosoft-corp/dronava.git
cd dronava/components/openairinterface5g/cmake_targets/
git checkout feature_oai_light
./build_oai -I
./build_oai --fido-enb --arm-ap --enable-x2
