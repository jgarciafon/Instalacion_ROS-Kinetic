# ROS-Kinetic
- http://wiki.ros.org/kinetic/Installation/Ubuntu
- http://wiki.ros.org/stdr_simulator/Tutorials/Set%20up%20STDR%20Simulator
# 0. Descargar archivos
```
cd ~
git clone https://github.com/jgarciafon/Instalacion_ROS-Kinetic.git
```
# 1. Instalar ROS Kinetic
```
cd Instalacion_ROS-Kinetic
sh install_ROS-Kinetic.sh
exit
```
# 2. Configurar el espacio de trabajo
```
cd Instalacion_ROS-Kinetic
sh install_and_configuring_ROS_environment.sh
echo "source ~/robotica_movil_ws/devel/setup.bash" >> ~/.bashrc
echo "export ROS_WORKSPACE=~/robotica_movil_ws/" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROS_WORKSPACE" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://192.168.1.60:11311" >> ~/.bashrc
echo "export ROS_IP=192.168.1.60" >> ~/.bashrc
source ~/.bashrc
exit
```
# 3. Instalar el simulador STDR
Cierra el terminal y abre uno nuevo.
```
cd Instalacion_ROS-Kinetic
sh install_STDR.sh
```
