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
# for contrib need packages:
# sudo apt-get install libgtk-3-dev
# sudo apt-get install libgstreamer-plugins-base1.0-dev
#sudo apt-get install libopenblas-dev
#sudo apt-get install libatlas-base-dev
# or you have errors
# -- Could not find OpenBLAS lib. Turning OpenBLAS_FOUND off
# -- Could NOT find Atlas
# --   No package 'gtk+-3.0' found
# --   No package 'gstreamer-video-1.0' found
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


# if you have errors
#'gtk+-3.0'
#sudo apt-get install libgtk-3-dev

#sudo apt-get install libgstreamer-plugins-base1.0-dev
#--   No package 'gstreamer-video-1.0' found

#sudo apt-get install libopenblas-dev
#sudo apt-get install libatlas-base-dev

# Could not find OpenBLAS include. Turning OpenBLAS_FOUND off
#-- Could not find OpenBLAS lib. Turning OpenBLAS_FOUND off
#-- Could NOT find Atlas

# could not find python libraries
#sudo apt-get install python3-dev python3-pip python3-tk python3-lxml python3-six

#numpy not found
#sudo pip3 install numpy

#  lapack openblas not found
#sudo apt-get install liblapacke-dev
#sudo ln -s /usr/include/lapacke.h /usr/include/openblas/
