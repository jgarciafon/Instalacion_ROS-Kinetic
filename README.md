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
pluma ~/.bashrc
```
Copiar todo lo siguiente y pegar al final del .bashrc. NOTA: Cambia la IP a las ultimas sentencias
```
source ~/robotica_movil_ws/devel/setup.bash
export ROS_WORKSPACE=~/robotica_movil_ws/
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROS_WORKSPACE
export ROS_MASTER_URI=http://IP:11311
export ROS_IP=IP
```
```
exit
```

# 3. Instalar el simulador STDR mas el ruido de odometria
```
cd Instalacion_ROS-Kinetic
sh install_STDR.sh
cd ~
rm -rf Instalacion_ROS-Kinetic
```
# 3.1 Lanzar el simulador
```
# Abrir el simulador con el mapa de eurobot19 sin ruido de odometria y carga un amigobot sin sonares
roslaunch stdr_launchers eurobot19.launch
# En el terminal pulsamos Ctrl+shift+t para abrir una pestaña y escribimos para teleoperar
rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=/robot0/cmd_vel
```

