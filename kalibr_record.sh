#! /bin/bash

terminator --new-tab --title=roscore --execute roscore &
terminator --new-tab --title=zed_wrapper --execute roslaunch zed_wrapper zed2i.launch &
terminator --new-tab --title=rviz --execute rviz -d zed2i.rviz &
terminator --new-tab --title=record --execute rosbag record /zed2i/zed_node/right_raw/image_raw_color /zed2i/zed_node/left_raw/image_raw_color /zed2i/zed_node/imu/data_raw