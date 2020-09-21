echo "Beginning ROS Installation"

echo -e "\e[34m >>> Beginning ROS Melodic Installation <<< \e[39m"
echo -e "\e[34m >>> Setting up sources.list and keys <<< \e[39m"

  sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
  sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

echo -e "\e[34m >>> Done <<< \e[39m"

  sudo apt update


echo -e "\e[34m >>> Beginning ros-melodic-desktop-full installation. <<< \e[39m"

  sudo apt install ros-melodic-desktop-full -y

echo -e "\e[34m >>> Done <<< \e[39m"

echo -e "\e[34m >>> Setting up rosinstall <<< \e[39m"

  sudo apt install python-rosdep -y
  sudo apt install git -y
  
echo -e "\e[34m >>> Done <<< \e[39m"


echo -e "\e[34m >>> Setting up rosdep <<< \e[39m"

  sudo rosdep init
  rosdep update

echo -e "\e[34m >>> Done <<< \e[39m"  

echo -e "\e[34m >>> Setup ROS Workspace & environment <<< \e[39m"
	
	sudo cp 39-ros.rules /etc/udev/rules.d/39-ros.rules
	sudo cp 49-teensy.rules /etc/udev/rules.d/49-teensy.rules
	sudo cp ros_bash ~/.ros_bash

	cd ~/
	mkdir -p ros_ws/src
	cd ros_ws
	catkin_make
	echo "source ~/.ros_bash" >> ~/.bashrc
	
	source ~/.bashrc	

echo -e "\e[34m >>> Done <<< \e[39m"  

echo -e "\e[34m >>> Install Visual Studio Code <<< \e[39m"

	sudo apt install software-properties-common apt-transport-https wget -y
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt update
	sudo apt install code -y

echo -e "\e[34m >>> Done <<< \e[39m"  


echo -e "\e[34m >>> Finish <<< \e[39m"

echo -e "\e[34m >>> Install Finish <<< \e[39m"
