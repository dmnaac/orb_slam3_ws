#!/bin/bash

git clone --branch c++14_comp --single-branch https://github.com/UZ-SLAMLab/ORB_SLAM3.git

cd ORB_SLAM3

echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Building DBoW2 completed."
echo "Press [Enter] key to continue..."
read

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Building g2o completed."
echo "Press [Enter] key to continue..."
read

cd ../../Sophus

echo "Configuring and building Thirdparty/Sophus ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Building Sophus completed."
echo "Press [Enter] key to continue..."
read

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Uncompress vocabulary completed."
echo "Press [Enter] key to continue..."
read

echo "Configuring and building ORB_SLAM3 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

echo "Building ORB-SLAM3 completed."
