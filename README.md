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
echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/robotica_movil_ws/" >> ~/.bashrc
exit
```
# 3. Instalar el simulador STDR
Cierra el terminal y abre uno nuevo.
```
cd Instalacion_ROS-Kinetic
sh install_STDR.sh
```
