#!bash

# http://caffe.berkeleyvision.org/install_apt.html
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

# dowlonad caffe from git
cd
git clone https://github.com/BVLC/caffe
cd caffe
find -name requirements.txt
cd python
for req in $(cat requirements.txt); do pip install $req; done
#pandas 0.23.4 has requirement python-dateutil>=2.5.0, but you'll have python-dateutil 1.5 which is incompatible.
#matplotlib 2.2.3 has requirement python-dateutil>=2.1, but you'll have python-dateutil 1.5 which is incompatible.
cd ..
cp Makefile.config.example Makefile.config
nano Makefile.config
#	Modify makefile for use!
# 1) Uncomment CPU only
# 2) 

# Errors
# 1) openblas not found https://github.com/BVLC/caffe/issues/3599
sudo apt-get install libopenblas-dev
# 2) hdf5 
sudo apt-get install libhdf5-10
sudo apt-get install libhdf5-serial-dev
sudo apt-get install libhdf5-dev
sudo apt-get install libhdf5-cpp-11
find /usr -iname "*hdf5.h*"
#https://stackoverflow.com/questions/37007495/caffe-didnt-see-hdf5-h-when-compiling
#/usr/include/hdf5/serial/hdf5.h
#/usr/include/opencv2/flann/hdf5.h
#/usr/local/include/opencv2/flann/hdf5.h
#--- INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include
#+++ INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include /usr/include/hdf5/serial/

# 3)LD -o .build_release/lib/libcaffe.so.1.0.0
#/usr/bin/ld: cannot find -lhdf5_hl
#https://github.com/BVLC/caffe/wiki/Ubuntu-16.04-or-15.10-Installation-Guide
#LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/hdf5/serial  

# 4) /usr/bin/ld: cannot find -lcblas
# https://github.com/BVLC/caffe/issues/559
sudo apt-get install libatlas-base-dev

sudo pip install pandas
make clean
make all
make test
make runtest

# Error
# 5) python/caffe/_caffe.cpp:10:31: fatal error: numpy/arrayobject.h: No such file or directory
sudo apt remove python-numpy
sudo apt install python-numpy

make pycaffe
make pytest
sudo apt install python-scipy
cd python

# install all that you need!
nano requirements.txt

sudo apt install python-gflags
sudo apt install python-protobuf

