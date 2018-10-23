#!/bin/bash
set -x
set -e
GPU=1 nvidia-docker run \
	-v $HOME/Work:/root/Work \
	-it bhallalab/deepcut_centos7 \
        /bin/bash
