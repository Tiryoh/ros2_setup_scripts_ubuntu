#!/usr/bin/env bats

setup() {
	load 'test_helper/bats-support/load'
	load 'test_helper/bats-assert/load'
}


@test "Humble fail on Ubuntu 20.04" {
	run ./ros2-humble-desktop-main.sh
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: This OS (version: focal) is not supported"
}

@test "Iron fail on Ubuntu 20.04" {
	run ./ros2-iron-desktop-main.sh
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: This OS (version: focal) is not supported"
}

@test "Jazzy fail on Ubuntu 20.04" {
	run ./ros2-jazzy-desktop-main.sh
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: This OS (version: focal) is not supported"
}
