# ros2_setup_scripts_ubuntu

[![CircleCI](https://circleci.com/gh/Tiryoh/ros2_setup_scripts_ubuntu/tree/master.svg?style=svg)](https://circleci.com/gh/Tiryoh/ros2_setup_scripts_ubuntu/tree/master)
[![GitHub Actions](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/workflows/ROS2%20install%20test/badge.svg)](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/actions?query=workflow%3A%22ROS2+install+test%22)

unofficial ROS2 install script for Ubuntu

Access https://index.ros.org/doc/ros2/Installation/ to get the updated information.

## QuickStart

After downloading this repository, just run the following command.

```sh
./run.sh
```

## Usage

By default, `run.sh` will install `ros-foxy-desktop`.   
If you need to install another package, edit line8-9 in `run.sh`.

```sh
CHOOSE_ROS_DISTRO=foxy # or dashing, etc...
INSTALL_PACKAGE=desktop # or ros-base
```

For example, if you want to install ros-base package of ROS 2 Dashing,
edit like the followings.

```sh
CHOOSE_ROS_DISTRO=dashing # or dashing, etc...
INSTALL_PACKAGE=ros-base # or ros-base
```

After editing, run `run.sh` to install the packages.

```sh
./run.sh
```

In addition, there are other ways to use the installers.

ROS Foxy

* To install `ros-foxy-ros-base`, use [`ros2-foxy-ros-base-main.sh`](./ros2-foxy-ros-base-main.sh) instead of `run.sh`.
* To install `ros-foxy-desktop`, use [`ros2-foxy-desktop-main.sh`](./ros2-foxy-desktop-main.sh) instead of `run.sh`.

ROS Galactic

* To install `ros-galactic-ros-base`, use [`ros2-galactic-ros-base-main.sh`](./ros2-galactic-ros-base-main.sh) instead of `run.sh`.
* To install `ros-galactic-desktop`, use [`ros2-galactic-desktop-main.sh`](./ros2-galactic-desktop-main.sh) instead of `run.sh`.

ROS Dashing (EOL)

* To install `ros-dashing-ros-base`, use [`ros2-dashing-ros-base-main.sh`](./ros2-dashing-ros-base-main.sh) instead of `run.sh`.
* To install `ros-dashing-desktop`, use [`ros2-dashing-desktop-main.sh`](./ros2-dashing-desktop-main.sh) instead of `run.sh`.

## LICENSE

(C) 2019-2021 Tiryoh

This repository is released under the Apache License 2.0, see [LICENSE](./LICENSE).  
Unless attributed otherwise, everything in this repository is under the Apache License 2.0.

### Acknowledgements

`run.sh` is based on https://index.ros.org/doc/ros2/Installation/Crystal/Linux-Install-Debians/
by Open Robotics, licensed under CC-BY-4.0.  

`tutorial.sh` is based on https://index.ros.org/doc/ros2/Tutorials/Colcon-Tutorial/
by Open Robotics, licensed under CC-BY-4.0.  

source: https://github.com/ros2/ros2_documentation
