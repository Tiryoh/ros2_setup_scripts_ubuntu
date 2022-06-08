#!/usr/bin/env bats

setup() {
	load 'test_helper/bats-support/load'
	load 'test_helper/bats-assert/load'
}


@test "Foxy fail on Ubuntu 18.04" {
	run ./ros2-foxy-desktop-main.sh
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: This OS (version: bionic) is not supported"
}

@test "Galactic fail on Ubuntu 18.04" {
	run ./ros2-galactic-desktop-main.sh
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: This OS (version: bionic) is not supported"
}

@test "Humble fail on Ubuntu 18.04" {
	run ./ros2-humble-desktop-main.sh
	[ "$status" -eq 1 ]
	assert_output --partial "ERROR: This OS (version: bionic) is not supported"
}
