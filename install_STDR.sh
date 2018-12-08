#!/bin/bash

####################################################################################
###### STDR + aux_files (error odometria) + mapa eurobot19 + robot eurobot19 #######
####################################################################################

# Instalar el simulador
cd ~/Instalacion_ROS-Kinetic
mv stdr_simulator-indigo-devel.zip ~/eurobot_ws/src
cd ~/eurobot_ws/src
unzip stdr_simulator-indigo-devel.zip
rm stdr_simulator-indigo-devel.zip
cd ..
sudo rosdep install --from-paths src --ignore-src --rosdistro $ROS_DISTRO -y
catkin_make

# Instalar el error de odometria
cd ~/Instalacion_ROS-Kinetic
mv aux_files.zip ~/eurobot_ws/src
cd ~/eurobot_ws/src
unzip aux_files.zip
rm aux_files.zip
cd ..
catkin_make
