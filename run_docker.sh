#!/bin/bash
set -x
set -e
# How to run X11: https://dzone.com/articles/docker-x11-client-via-ssh
GPU=1 nvidia-docker run \
	-v $HOME/Work:/root/Work \
        --net=host \
	--env="DISPLAY" \
        --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
	-it bhallalab/deeplabcut2:latest /bin/bash
