#!/usr/bin/env bash
set -eu

# REF: https://docs.ros.org/en/galactic/Installation/Ubuntu-Install-Debians.html
# by Open Robotics, licensed under CC-BY-4.0
# source: https://github.com/ros2/ros2_documentation

CHOOSE_ROS_DISTRO=galactic
INSTALL_PACKAGE=ros-base

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo apt-get install -y curl gnupg2 lsb-release build-essential

[[ "$(lsb_release -sc)" == "focal" ]] || exit 1

curl -Ls https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt-get update
sudo apt-get install -y ros-$CHOOSE_ROS_DISTRO-$INSTALL_PACKAGE
sudo apt-get install -y python3-argcomplete
sudo apt-get install -y python3-colcon-common-extensions
sudo apt-get install -y python3-rosdep python3-vcstool # https://index.ros.org/doc/ros2/Installation/Linux-Development-Setup/
[ -e /etc/ros/rosdep/sources.list.d/20-default.list ] ||
sudo rosdep init
rosdep update
grep -F "source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash" ~/.bashrc ||
echo "source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash" >> ~/.bashrc

set +u

source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash

echo "success installing ROS2 $CHOOSE_ROS_DISTRO"
echo "Run 'source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash'"
