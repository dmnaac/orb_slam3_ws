echo "export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:YOUR_PATH/ORB_SLAM3/Examples_old/ROS" >> ~/.bashrc

echo "Building ROS nodes"

cd Examples_old/ROS/ORB_SLAM3
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j
