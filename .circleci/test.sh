#!/usr/bin/env bash
set -e

SRC_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

source <(head -n -1 $SRC_DIR/../tutorial.sh)
which ros2
