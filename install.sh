#!/bin/bash
#sudo bash path/to/install.sh
#chmod +x install.sh

############################################################################
# 1) Install Opencv 
#       https://docs.opencv.org/3.4/d7/d9f/tutorial_linux_install.html
############################################################################
cd
sudo apt-get install -y build-essential
sudo apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
git clone https://github.com/opencv/opencv
#git clone https://github.com/opencv/opencv_contrib.git
cd ~/opencv
mkdir build
cd build
# add -DOPENCV_EXTRA_MODULES_PATH=<opencv_contrib>/modules for contrib
# as example:
# sudo cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/home/popikeyshen/Lib/opencv_contrib/modules ..
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. 
make -j7
sudo make install

############################################################################
# 2) Install Dlib
############################################################################
cd
git clone https://github.com/davisking/dlib
cd dlib
#./install.sh
mkdir build
cd build
cmake ..
sudo make install

############################################################################
# 3) Install Eigen
############################################################################
cd 
git clone https://github.com/libigl/eigen
cd eigen
mkdir build
cd build
cmake ..
sudo make install



