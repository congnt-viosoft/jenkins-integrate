#!/bin/bash
docker volume create oaisim-arm
docker build -t oaisim_arm .
id=$(docker run -itd --net=host --privileged -v /dev/:/dev/ --mount source=oaisim-arm,target=/root/ oaisim_arm)
docker exec -it $id /bin/bash
