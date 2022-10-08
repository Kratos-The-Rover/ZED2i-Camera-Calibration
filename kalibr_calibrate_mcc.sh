#! /bin/bash

rosrun kalibr kalibr_calibrate_cameras --bag $1 --topics /zed2i/zed_node/right_raw/image_raw_color /zed2i/zed_node/left_raw/image_raw_color --models pinhole-equi pinhole-equi --target target.yaml

