#!/usr/bin/env bats

setup() {
	load 'test_helper/bats-support/load'
	load 'test_helper/bats-assert/load'
}

@test "run.sh chooses ROS 2 LTS for Ubuntu Jammy" {
	run bash -c 'ROS2_RUN_SH_LIB_ONLY=1 source ./run.sh; unset ROS_DISTRO; choose_ros_distro jammy'
	[ "$status" -eq 0 ]
	assert_output "humble"
}

@test "run.sh chooses ROS 2 LTS for Ubuntu Noble" {
	run bash -c 'ROS2_RUN_SH_LIB_ONLY=1 source ./run.sh; unset ROS_DISTRO; choose_ros_distro noble'
	[ "$status" -eq 0 ]
	assert_output "jazzy"
}

@test "run.sh chooses ROS 2 LTS for Ubuntu Resolute" {
	run bash -c 'ROS2_RUN_SH_LIB_ONLY=1 source ./run.sh; unset ROS_DISTRO; choose_ros_distro resolute'
	[ "$status" -eq 0 ]
	assert_output "lyrical"
}

@test "run.sh respects ROS_DISTRO when it matches Ubuntu" {
	run bash -c 'ROS2_RUN_SH_LIB_ONLY=1 source ./run.sh; ROS_DISTRO=kilted choose_ros_distro noble'
	[ "$status" -eq 0 ]
	assert_output "kilted"
}

@test "run.sh rejects ROS_DISTRO when it does not match Ubuntu" {
	run bash -c 'ROS2_RUN_SH_LIB_ONLY=1 source ./run.sh; ROS_DISTRO=humble choose_ros_distro noble'
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: ROS_DISTRO (humble) does not support this OS (version: noble, expected: jammy)"
}
