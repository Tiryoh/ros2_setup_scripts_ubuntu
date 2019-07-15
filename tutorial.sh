#!/usr/bin/env bash
set -e

mkdir -p ~/ros2_example_ws/src
cd ~/ros2_example_ws
git clone -b crystal https://github.com/ros2/examples src/examples
source /opt/ros/crystal/setup.bash
#colcon build --symlink-install
MAKEFLAGS="-j1 -l1" colcon build --symlink-install --executor sequential # build one package at once https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/4
colcon test
source ~/ros2_example_ws/install/local_setup.bash
echo "Run 'ros2 run examples_rclcpp_minimal_publisher publisher_member_function' on another terminal"
ros2 run examples_rclcpp_minimal_subscriber subscriber_member_function
