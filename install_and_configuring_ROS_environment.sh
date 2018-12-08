#!/bin/bash

###########################################################################################
#################### Installing and Configuring Your ROS Environment ######################
###########################################################################################
mkdir -p ~/eurobot_ws/src

cd ~/eurobot_ws/src/
catkin_init_workspace
cd ~/eurobot_ws
catkin_make
