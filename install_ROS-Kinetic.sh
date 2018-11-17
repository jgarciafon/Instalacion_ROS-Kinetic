#!/bin/bash

#########################################################################################################
################################# Ubuntu install of ROS Kinetic #########################################
#########################################################################################################
# Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Update packages
sudo apt-get update

# Install Desktop-Full Install: (Recommended) 
# ROS, rqt, rviz, robot-generic libraries, 2D/3D simulators, navigation and 2D/3D perception 
sudo apt-get install ros-kinetic-desktop-full -y

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "\n# ROS Kinetic Environment Var" >> ~/.bashrc
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Dependencies for building packages
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential ros-kinetic-bfl ros-kinetic-teleop-twist-keyboard -y

