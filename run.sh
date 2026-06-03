#!/usr/bin/env bash
set -eu

# Copyright 2019-2026 Tiryoh
# https://github.com/Tiryoh/ros2_setup_scripts_ubuntu
# Licensed under the Apache License, Version 2.0
#
# REF: https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debs.html
# by Open Robotics, licensed under CC-BY-4.0
# source: https://github.com/ros2/ros2_documentation

INSTALL_PACKAGE=${INSTALL_PACKAGE:-desktop}

print_error() {
	printf '\033[33m%s\033[m\n' "=================================================="
	printf '\033[33m%s\033[m\n' "$1"
	printf '\033[33m%s\033[m\n' "=================================================="
}

default_ros_distro_for_os() {
	case "$1" in
		bionic) echo dashing ;;
		focal) echo foxy ;;
		jammy) echo humble ;;
		noble) echo jazzy ;;
		resolute) echo lyrical ;;
		*) return 1 ;;
	esac
}

target_os_for_ros_distro() {
	case "$1" in
		dashing|eloquent) echo bionic ;;
		foxy|galactic) echo focal ;;
		humble|iron) echo jammy ;;
		jazzy|kilted) echo noble ;;
		lyrical) echo resolute ;;
		*) return 1 ;;
	esac
}

ensure_lsb_release() {
	if ! which lsb_release > /dev/null ; then
		sudo apt-get update
		sudo apt-get install -y curl lsb-release
	fi
}

choose_ros_distro() {
	local os_codename=$1
	local requested_ros_distro=${ROS_DISTRO:-}
	local target_os

	if [ -n "$requested_ros_distro" ]; then
		if ! target_os=$(target_os_for_ros_distro "$requested_ros_distro"); then
			print_error "ERROR: ROS_DISTRO ($requested_ros_distro) is not supported by this script"
			return 1
		fi
		if [ "$os_codename" != "$target_os" ]; then
			print_error "ERROR: ROS_DISTRO ($requested_ros_distro) does not support this OS (version: $os_codename, expected: $target_os)"
			return 1
		fi
		echo "$requested_ros_distro"
		return 0
	fi

	if ! default_ros_distro_for_os "$os_codename"; then
		print_error "ERROR: This OS (version: $os_codename) is not supported"
		return 1
	fi
}

install_ros_apt_source() {
	local os_codename=$1

	if [ "$os_codename" = "resolute" ]; then
		local ros_apt_source_version
		ros_apt_source_version=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F'"' '{print $4}')
		curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ros_apt_source_version}/ros2-apt-source_${ros_apt_source_version}.${os_codename}_all.deb"
		sudo dpkg -i /tmp/ros2-apt-source.deb
	else
		sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
		echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $os_codename main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
	fi
}

install_ros() {
	local os_codename=$1
	local ros_distro=$2

	sudo apt-get update
	sudo apt-get install -y software-properties-common
	sudo add-apt-repository -y universe
	sudo apt-get install -y curl lsb-release build-essential

	if [ "$os_codename" = "resolute" ]; then
		sudo apt-get install -y gnupg
	else
		sudo apt-get install -y gnupg2
	fi

	install_ros_apt_source "$os_codename"

	sudo apt-get update
	sudo apt-get install -y "ros-$ros_distro-$INSTALL_PACKAGE"
	sudo apt-get install -y python3-argcomplete python3-colcon-clean
	sudo apt-get install -y python3-colcon-common-extensions
	if [ "$os_codename" = "bionic" ]; then
		sudo apt-get install -y python-rosdep python3-vcstool
	else
		sudo apt-get install -y python3-rosdep python3-vcstool
	fi

	[ -e /etc/ros/rosdep/sources.list.d/20-default.list ] ||
	sudo rosdep init
	rosdep update
	grep -F "source /opt/ros/$ros_distro/setup.bash" ~/.bashrc ||
	echo "source /opt/ros/$ros_distro/setup.bash" >> ~/.bashrc
	if [ "$ros_distro" = "dashing" ] || [ "$ros_distro" = "eloquent" ] || [ "$ros_distro" = "foxy" ] || [ "$ros_distro" = "galactic" ] || [ "$ros_distro" = "humble" ]; then
		grep -F "export ROS_LOCALHOST_ONLY=1" ~/.bashrc ||
		echo "# export ROS_LOCALHOST_ONLY=1" >> ~/.bashrc
	else
		grep -F "export ROS_AUTOMATIC_DISCOVERY_RANGE=" ~/.bashrc ||
		echo "# export ROS_AUTOMATIC_DISCOVERY_RANGE=LOCALHOST" >> ~/.bashrc
	fi

	set +u
	source "/opt/ros/$ros_distro/setup.bash"

	echo "success installing ROS2 $ros_distro"
	echo "Run 'source /opt/ros/$ros_distro/setup.bash'"
}

main() {
	ensure_lsb_release

	local os_codename
	os_codename=$(lsb_release -sc)

	local ros_distro
	ros_distro=$(choose_ros_distro "$os_codename")
	echo "Install ROS2 $ros_distro for Ubuntu $os_codename"

	local arch
	arch=$(dpkg --print-architecture)
	if [ "$arch" != "amd64" ] && [ "$arch" != "arm64" ]; then
		print_error "ERROR: This architecture ($arch) is not supported"
		exit 1
	fi

	install_ros "$os_codename" "$ros_distro"
}

if [ "${ROS2_RUN_SH_LIB_ONLY:-0}" != "1" ]; then
	main "$@"
fi
