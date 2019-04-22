#!/bin/bash
#sudo bash path/to/install.sh
#chmod +x caffe.sh

# you can install boost from boost official site https://www.boost.org/
#  download and install boost:
#./bootstrap.sh
#./b2 install

sudo apt-get install -y git
git clone https://github.com/BVLC/caffe
cd caffe
mkdir build
cd build

sudo apt-get install -y cmake

sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install -y --no-install-recommends libboost-all-dev
sudo apt-get install -y python-pip

sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev
sudo apt-get install -y libopenblas-dev

sudo apt-get install -y libhdf5-10
sudo apt-get install -y libhdf5-serial-dev
sudo apt-get install -y libhdf5-dev
sudo apt-get install -y libhdf5-cpp-11

sudo apt-get install -y libatlas-base-dev

sudo pip install  pandas
sudo apt install -y python-numpy
sudo apt install -y python-scipy
sudo apt install -y python-gflags
sudo apt install -y python-protobuf
sudo pip install scipy --upgrade

sudo pip install  six --upgrade
sudo pip install  Pillow --upgrade
sudo pip install  pydot --upgrade
sudo apt-get install -y cython --upgrade

sudo apt-get install -y graphviz



# https://github.com/yahoo/open_nsfw/issues/13
sudo apt-get install -y python-matplotlib python-numpy python-pil python-scipy
sudo apt-get install -y build-essential cython
sudo apt-get install -y python-skimage

printf " if you have errors by opencv CV_LOAD_IMAGE_COLOR define following
        #define CV_LOAD_IMAGE_COLOR cv::IMREAD_COLOR
        #define CV_LOAD_IMAGE_GRAYSCALE 0 
        //IMREAD_GRAYSCALE = 0 
        
        and for gpu support:
        1) add /usr/include/hdf5/serial/ to line in Makefile.config
        INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include
        
        and /usr/lib/x86_64-linux-gnu/hdf5/serial to
        LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib  
        
        2) for nvidia GTX1060 comment line
        -gencode arch=compute_20,code=sm_20 
           for nvidia 940m
        -gencode arch=compute_20,code=sm_20
        -gencode arch=compute_20,code=sm_20   
        3) if more opencv errors
         USE_PKG_CONFIG := 1   "


make runtest
#make pycaffe
#make pytest
