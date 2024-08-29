# ros2_setup_scripts_ubuntu

[![GitHub Actions](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/workflows/ROS2%20install%20test/badge.svg)](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/actions/workflows/main.yml?query=workflow%3A%22ROS2+install+test%22)

unofficial ROS2 install script for Ubuntu

Access https://docs.ros.org/en/jazzy/Installation.html to get the updated information.

ROS 1 version: https://github.com/Tiryoh/ros_setup_scripts_ubuntu

## QuickStart

After downloading this repository, just run the following command.

```sh
./run.sh
```

## Usage

By default, `run.sh` will install `ros-jazzy-desktop`.   
If you need to install another package, use indivitual installers listed bellow.

### Individual installers

ROS 2 Humble (LTS)

* To install `ros-humble-ros-base`, use [`ros2-humble-ros-base-main.sh`](./ros2-humble-ros-base-main.sh) instead of `run.sh`.
* To install `ros-humble-desktop`, use [`ros2-humble-desktop-main.sh`](./ros2-humble-desktop-main.sh) instead of `run.sh`.

ROS 2 Iron

* To install `ros-iron-ros-base`, use [`ros2-iron-ros-base-main.sh`](./ros2-iron-ros-base-main.sh) instead of `run.sh`.
* To install `ros-iron-desktop`, use [`ros2-iron-desktop-main.sh`](./ros2-iron-desktop-main.sh) instead of `run.sh`.

ROS 2 Jazzy (LTS)

* To install `ros-jazzy-ros-base`, use [`ros2-jazzy-ros-base-main.sh`](./ros2-jazzy-ros-base-main.sh) instead of `run.sh`.
* To install `ros-jazzy-desktop`, use [`ros2-jazzy-desktop-main.sh`](./ros2-jazzy-desktop-main.sh) instead of `run.sh`.

#### Old versions

ROS 2 Dashing (EOL)

* To install `ros-dashing-ros-base`, use [`ros2-dashing-ros-base-main.sh`](./ros2-dashing-ros-base-main.sh) instead of `run.sh`.
* To install `ros-dashing-desktop`, use [`ros2-dashing-desktop-main.sh`](./ros2-dashing-desktop-main.sh) instead of `run.sh`.

ROS 2 Eloquent (EOL)

* To install `ros-eloquent-ros-base`, use [`ros2-eloquent-ros-base-main.sh`](./ros2-eloquent-ros-base-main.sh) instead of `run.sh`.
* To install `ros-eloquent-desktop`, use [`ros2-eloquent-desktop-main.sh`](./ros2-eloquent-desktop-main.sh) instead of `run.sh`.

ROS 2 Foxy (EOL)

* To install `ros-foxy-ros-base`, use [`ros2-foxy-ros-base-main.sh`](./ros2-foxy-ros-base-main.sh) instead of `run.sh`.
* To install `ros-foxy-desktop`, use [`ros2-foxy-desktop-main.sh`](./ros2-foxy-desktop-main.sh) instead of `run.sh`.

ROS 2 Galactic (EOL)

* To install `ros-galactic-ros-base`, use [`ros2-galactic-ros-base-main.sh`](./ros2-galactic-ros-base-main.sh) instead of `run.sh`.
* To install `ros-galactic-desktop`, use [`ros2-galactic-desktop-main.sh`](./ros2-galactic-desktop-main.sh) instead of `run.sh`.

## Supported LTS Versions

Reference: [REP-0003](https://ros.org/reps/rep-0003.html), [REP-2000](https://ros.org/reps/rep-2000.html)

| Ubuntu | ROS 1 | ROS 2 |
| ------ | ----- | ----- |
| Ubuntu 18.04<br>EOL: May 2023[^2] | Melodic<br>EOL: May 2023 | Dashing<br>EOL: May 2021 |
| Ubuntu 20.04<br>EOL: April 2025[^3] | Noetic<br>EOL: May 2025 | Foxy<br>EOL: May 2023 |
| Ubuntu 22.04<br>EOL: April 2027[^4] | - | Humble<br>EOL: May 2027 |
| Ubuntu 24.04<br>EOL: June 2029[^5] | - | Jazzy<br>EOL: May 2029 |

* Note: Here, EOL for Ubuntu refers to the end of normal support, which is not Ubuntu Pro.

[^2]: https://ubuntu.com//blog/18-04-end-of-standard-support
[^3]: https://wiki.ubuntu.com/FocalFossa/ReleaseNotes
[^4]: https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668
[^5]: https://discourse.ubuntu.com/t/noble-numbat-release-notes/39890

## LICENSE

```
Copyright 2019-2024 Tiryoh

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

### Acknowledgements

`run.sh` is based on [https://index.ros.org/doc/ros2/Installation/Crystal/Linux-Install-Debians/](https://web.archive.org/web/20190618134850/https://index.ros.org//doc/ros2/Installation/Crystal/Linux-Install-Debians/)
by Open Robotics, licensed under CC-BY-4.0.  

`tutorial.sh` is based on [https://index.ros.org/doc/ros2/Tutorials/Colcon-Tutorial/](https://web.archive.org/web/20190618134901/https://index.ros.org/doc/ros2/Tutorials/Colcon-Tutorial/)
by Open Robotics, licensed under CC-BY-4.0.  

source: https://github.com/ros2/ros2_documentation

Access https://docs.ros.org/en/jazzy/Installation.html to get the updated information.
