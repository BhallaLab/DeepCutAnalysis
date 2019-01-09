#!/bin/bash
set -x
set -e
GPU=1 nvidia-docker run \
	-v $HOME/Work:/root/Work \
	-e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
	-it bhallalab/deeplabcut2:latest /bin/bash
