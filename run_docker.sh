#!/bin/bash
set -x
set -e
GPU=1 nvidia-docker run \
	-v $HOME/Work:/root/Work \
	-it bhallalab/deeplabcut2:latest \
        /bin/bash
