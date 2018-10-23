#!/bin/bash
docker image build \
	--build-arg http_proxy=http://proxy.ncbs.res.in:3128 \
	--build-arg https_proxy=http://proxy.ncbs.res.in:3128 \
	-t bhallalab/deepcut_centos7 \
	.
