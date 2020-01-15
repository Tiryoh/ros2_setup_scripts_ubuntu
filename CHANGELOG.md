
<a name="1.1.0"></a>
## [1.1.0](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu/compare/1.0.0...1.1.0) (0001-01-01)

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

