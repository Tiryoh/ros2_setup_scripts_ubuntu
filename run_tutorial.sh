mkdir -p ~/ros2_example_ws/src
cd ~/ros2_example_ws
git clone -b crystal https://github.com/ros2/examples src/examples
colcon build --symlink-install
colcon test
source ~/ros2_example_ws/install/setup.bash
echo "Run 'ros2 run examples_rclcpp_minimal_publisher publisher_member_function' on another terminal"
ros2 run examples_rclcpp_minimal_subscriber subscriber_member_function
