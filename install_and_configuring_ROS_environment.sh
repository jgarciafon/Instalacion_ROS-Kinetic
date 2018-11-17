#!/bin/bash

###########################################################################################
#################### Installing and Configuring Your ROS Environment ######################
###########################################################################################

mkdir -p ~/robotica_movil_ws/src

cd ~/robotica_movil_ws/src/
catkin_init_workspace
cd ~/robotica_movil_ws
catkin_make

echo "source ~/robotica_movil_ws/devel/setup.bash" >> ~/.bashrc
echo "export ROS_WORKSPACE=~/robotica_movil_ws/" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROS_WORKSPACE" >> ~/.bashrc
echo "export ROSCONSOLE_FORMAT='[${severity}] [${time}]: ${message}'" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://192.168.1.1" >> ~/.bashrc
echo "export ROS_IP=192.168.1.1" >> ~/.bashrc
source ~/.bashrc
