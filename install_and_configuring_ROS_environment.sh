#!/bin/bash

###########################################################################################
#################### Installing and Configuring Your ROS Environment ######################
###########################################################################################

mkdir –p ~/robotica_movil_ws/src

cd ~/robotica_movil_ws/src/
catkin_init_workspace
cd ~/robotica_movil_ws
catkin_make

echo "\n# ROS Kinetic " >> ~/.bashrc
echo "source ~/robotica_movil_ws/devel/setup.bash" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/robotica_movil_ws/" >> ~/.bashrc
source ~/.bashrc
