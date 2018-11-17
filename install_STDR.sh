#!/bin/bash

####################################################################################
###### STDR + aux_files (error odometria) + mapa eurobot19 + robot eurobot19 #######
####################################################################################

# Instalar el simulador
cd ~/Instalacion_ROS-Kinetic
mv stdr_simulator-indigo-devel.zip ~/robotica_movil_ws/src
cd ~/robotica_movil_ws/src
unzip stdr_simulator-indigo-devel.zip
rm stdr_simulator-indigo-devel.zip
cd ..
rospack profile
catkin_make

# Instalar el error de odometria
cd ~/Instalacion_ROS-Kinetic
mv aux_files.zip ~/robotica_movil_ws/src
unzip aux_files.zip
rm aux_files.zip
cd ..
catkin_make
