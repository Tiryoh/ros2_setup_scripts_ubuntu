<a name="2.1.0"></a>
## [2.1.0](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/compare/2.0.0...2.1.0) (2023-05-07)

### Bug Fixes

* Add missing rosdep init step ([#48](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/48))
* Add missing system upgrade step ([#44](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/44))
* Allow for unattended execution ([#41](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/41))
* Allow for unattended execution ([#40](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/40))

### Documentation Updates

* Update ROS distro list ([#45](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/45))
* Fix typo
* Add link to ROS 1 setup scripts

### Features

* Add colcon-clean ([#43](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/43))
* Drop support for ROS Galactic ([#39](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/39))
* Enable colcon-argcomplete ([#36](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/36))
* Add arch check ([#33](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/33))
* Run OS check first ([#32](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/32))
* Make ROS 2 Humble the default ([#31](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/31))
* Add ROS 2 Humble ([#29](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/29))
* Separate EOL installers ([#26](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/26))
* Update GPG key installation step to the latest ([#23](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/23))
* Support ROS 2 Galactic Geochelone ([#21](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/21))


<a name="2.0.0"></a>
## [2.0.0](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/compare/1.1.0...2.0.0) (2021-07-08)

### Bug Fixes

* Add packages on which the installer depends ([#15](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/15))
* Check rosdep sources list before initializing to avoid error on rosdep init ([#13](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/13))

### Features

* Set default as foxy ([#18](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/18))
* Drop support for ROS Eloquent ([#17](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/17))
* Add independent installers ([#12](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/12))
* Support ROS Foxy ([#11](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/11))
* Drop support for ROS Crystal ([#10](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/10))

<a name="1.1.0"></a>
## [1.1.0](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/compare/1.0.0...1.1.0) (2020-01-16)

### Documentation Updates

* add git-chglog settings

<a name="1.0.0"></a>
## [1.0.0](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/compare/0.0.1...1.0.0) (2020-01-11)

### Bug Fixes

* Fix example executioin error
* Fix [#4](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/4)
* Fix gpg error

### Code Refactoring

* Update comment

### Documentation Updates

* Update status badge
* Update README

### Features

* Add vcstool(the vcs command) to install script
* Add rosdep to install script
* Add multiple distribution tests ([#7](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/7))
* Update to use dashing as default
* Update colcon build option
* Update ROS distro of tutorial

### Performance Improvements

* Cleanup GPG keys

### Pull Requests

* Merge pull request [#5](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/5) from Tiryoh/renovate/configure
* Merge pull request [#3](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/3) from Tiryoh/cleanup_gpg_keys
* Merge pull request [#2](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/2) from Tiryoh/[#1](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/issues/1)_fix_gpg_error

### BREAKING CHANGES

* Update LICENSE
  * The files downloaded from this repository by Thu May 30 02:14 JST 2019 is licensed under the GPLv3 license.
  * The files downloaded from this repository after Thu May 30 02:14 JST 2019 is licensed under the Apache License Version 2.0.

<a name="0.0.1"></a>
## 0.0.1 (2019-05-16)

### Bug Fixes

* Add stdout for user to avoid ament-cmake error

### Documentation Updates

* Add README
* Update README
* Add circleci badge

### Features

* Add install script
* Add tutorial
* Add colcon to install script
* Update for auto-install
  * Add `-y` option to `apt install`

### Performance Improvements

* Update source file to minimize the affect
  * https://answers.ros.org/question/292566/what-is-the-difference-between-local_setupbash-and-setupbash/

