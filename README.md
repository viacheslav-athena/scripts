# Autoinstallation scripts

For some time, I installed libraries for my embedded systems manually from the command line. It takes more time than the autoinstallation script or docker. In this repository I will add more scripts for autoinstallation. If someone uses this repository, but he lacks some packages - write and I will add. Scripts will work for Debian(Ubuntu, Debian, Kali Linux..) based systems.

## List of packages

1. Script.sh

   a) Opencv

   b) Dlib

   c) Eigen

2. Caffe.sh

### Installing


```
git clone https://github.com/popikeyshen/scripts
cd scripts
sudo bash ./install.sh
sudo bash ./caffe.sh
```
If the caffe open file -> add following 
```
--- INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include
+++ INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include /usr/include/hdf5/serial/
```
and 
```
LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/hdf5/serial
```
### Path

 You can import caffe from this folder or add path
 
```
export PYTHONPATH=/home/user/caffe/python

```
 or in python add:
 
```
 import sys
 sys.path.append('/home/user/caffe/python')

```

### PythonLayer

1) add in Makefile.config
```
WITH_PYTHON_LAYER := 1 
```
2) install https://github.com/protocolbuffers/protobuf/releases/tag/v3.7.0
```
cd $PROTOBUF_BUILD_DIR/python
python setup.py build
python setup.py test
python setup.py install
```
from https://github.com/BVLC/caffe/issues/2092

3) export PYTHONPATH of pythonLayer
```
export PYTHONPATH=/home/user/pythonLayer/
```

### Errors

If you have errors - look comments in the install script. And dont forget to install the same versions of OpenCV and Contrib


### hashteg 
caffe installation, caffe bash autoinstall
opencv installation, opencv bash autoinstall

### Authors

Viacheslav Popika
