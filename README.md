# ROS-Kinetic
- http://wiki.ros.org/kinetic/Installation/Ubuntu
- http://wiki.ros.org/stdr_simulator/Tutorials/Set%20up%20STDR%20Simulator
# 0. Descargar archivos
```
cd ~
git clone https://github.com/jgarciafon/Instalacion_ROS-Kinetic.git
```
# 1. Instalar ROS Kinetic
Se ejecuta un script que instala ROS Kinetic full Desktop para Ubuntu e instala los paquetes recomendados por la pagina de ROS y se han añadido el paquete para utilizar filtros bayesianos y otro para teleoperar el robot con el teclado. Tardará en ejecutarse aproximadamente 4:30 minutos 
```
cd Instalacion_ROS-Kinetic
sh install_ROS-Kinetic.sh
exit
```
# 2. Configurar el espacio de trabajo
Se ejcuta un script que crea un espacio de trabajo para usar ROS. Con el comando roscd te lleva a dicha ubicación
```
cd Instalacion_ROS-Kinetic
sh install_and_configuring_ROS_environment.sh
pluma ~/.bashrc
```
Copiar todo lo siguiente y pegar al final del .bashrc. NOTA: Cambia la IP a las ultimas sentencias
```
source ~/eurobot_ws/devel/setup.bash
export ROS_WORKSPACE=~/eurobot_ws/
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROS_WORKSPACE
export ROS_MASTER_URI=http://$(ifconfig |grep -A 1 "enp0s3" |tail -1 |cut -d ":" -f 2| cut -d " " -f 1):11311
export ROS_IP=$(ifconfig |grep -A 1 "enp0s3" |tail -1 |cut -d ":" -f 2| cut -d " " -f 1)
```
Cierra el terminal
```
exit
```

# 3. Instalar el simulador STDR mas el ruido de odometría
Se ejecuta un script que instala el paquete del simulador 2D STDR (preconfigurado con un mapa de eurobot19 y el robot amigobot) y el paquete que añade ruido a la odometría.
```
cd Instalacion_ROS-Kinetic
sh install_STDR.sh
cd ~
rm -rf Instalacion_ROS-Kinetic
```
## 3.1 Lanzar el simulador
Ejecutar el simulador con el mapa de eurobot19 sin ruido de odometria y carga un amigobot sin sonares
```
roslaunch stdr_launchers eurobot19.launch
```
En el terminal pulsamos Ctrl+shift+t para abrir una nueva pestaña y escribimos lo siguiente para teleoperar.
```
rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=/robot0/cmd_vel
```

