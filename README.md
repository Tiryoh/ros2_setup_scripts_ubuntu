# ros2_setup_scripts_ubuntu

[![CircleCI](https://circleci.com/gh/Tiryoh/ros2_setup_scripts_ubuntu/tree/master.svg?style=svg)](https://circleci.com/gh/Tiryoh/ros2_setup_scripts_ubuntu/tree/master)
[![GitHub Actions](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/workflows/ROS2%20install%20test/badge.svg)](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/actions?query=workflow%3A%22ROS2+install+test%22)

unofficial ROS2 install script for Ubuntu

Acess https://index.ros.org/doc/ros2/Installation/Linux-Install-Debians/ to get the updated information.

## QuickStart

After downloading this repository, just run:

```sh
./run.sh
```

## Usage

By default, `run.sh` will install `ros-dashing-desktop`.   
If you need to install another package, edit line8-9 in `run.sh`.

```sh
CHOOSE_ROS_DISTRO=dashing # or crystal or eloquent
INSTALL_PACKAGE=desktop # or ros-base
```

Editing sample:
```sh
CHOOSE_ROS_DISTRO=crystal # or crystal or eloquent
INSTALL_PACKAGE=ros-base # or ros-base
```

After editing, run `run.sh` to install the packages.
```sh
./run.sh
```

## LICENSE

(C) 2019 Tiryoh

This repository is released under the Apache License 2.0, see [LICENSE](./LICENSE).  
Unless attributed otherwise, everything in this repository is under the Apache License 2.0.

### Acknowledgements

`run.sh` is based on https://index.ros.org/doc/ros2/Installation/Crystal/Linux-Install-Debians/
by Open Robotics, licensed under CC-BY-4.0.  

`tutorial.sh` is based on https://index.ros.org/doc/ros2/Tutorials/Colcon-Tutorial/
by Open Robotics, licensed under CC-BY-4.0.  

source: https://github.com/ros2/ros2_documentation
