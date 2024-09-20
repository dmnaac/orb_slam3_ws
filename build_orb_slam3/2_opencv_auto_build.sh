#!/bin/bash

# Install OpenCV required packages
echo "Installing OpenCV required packages"
sudo apt install -y \
	build-essential \
	cmake \
	git \
	libgtk2.0-dev \
	pkg-config \
	libavcodec-dev \
	libavformat-dev \
	libswscale-dev \
	python-dev \
	python-numpy
echo "All required packages installed"
echo "Press [Enter] key to continue..."
read
echo "Continuing with the script..."

# Build and install OpenCV
echo "Build and install OpenCV"
git clone --branch 4.4.0 --single-branch https://github.com/opencv/opencv.git
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j7
sudo make install
