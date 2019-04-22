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

make runtest

sudo apt-get install -y python-matplotlib python-numpy python-pil python-scipy
sudo apt-get install -y build-essential cython
sudo apt-get install -y python-skimage

#make pycaffe
#make pytest
