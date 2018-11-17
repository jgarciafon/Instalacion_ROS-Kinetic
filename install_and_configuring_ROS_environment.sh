#!/bin/bash

###########################################################################################
#################### Installing and Configuring Your ROS Environment ######################
###########################################################################################
mkdir -p ~/robotica_movil_ws/src

cd ~/robotica_movil_ws/src/
catkin_init_workspace
cd ~/robotica_movil_ws
catkin_make
