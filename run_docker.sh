#!/bin/bash
set -x
set -e
GPU=1 bash ./dlc-docker run \
	-d -p 2351:8888 \
	-e USER_HOME=$HOME/Work/DeepLabCut \
	--name GPU0 \
	bhallalab/deepcut_centos7

