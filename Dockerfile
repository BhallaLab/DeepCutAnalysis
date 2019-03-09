FROM python:3
RUN pip install imageio

# install ffmpeg from imageio.
RUN python -m pip install imageio-ffmpeg

FROM bethgelab/deeplearning:cuda9.0-cudnn7
RUN apt-get update
RUN apt-get -y install ffmpeg

RUN pip install --upgrade pip

RUN pip install tensorflow-gpu==1.8

RUN pip3 install deeplabcut

RUN pip install ipywidgets
RUN pip3 install ipywidgets

RUN pip3 install seaborn
RUN apt install -y \
    dpkg-dev build-essential \
    libjpeg-dev libtiff-dev \
    libsdl1.2-dev libgstreamer-plugins-base0.10-dev \
    libnotify-dev freeglut3 \
    freeglut3-dev libsm-dev \
    libgtk-3-dev libwebkitgtk-3.0-dev \
    libxtst-dev python3-tk
RUN python3 -m pip install wxpython
