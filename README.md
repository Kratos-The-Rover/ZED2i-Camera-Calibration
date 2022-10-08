# ZED2i Camera Calibration

## Dependencies

- [ZED SDK](https://www.stereolabs.com/developers/release)
- [Kalibr](https://github.com/ethz-asl/kalibr)
- [ZED ROS Wrapper](https://github.com/stereolabs/zed-ros-wrapper)
- [CUDA](https://developer.nvidia.com/cuda-downloads)

## Calibration

- Generate aprilgrid and target.yaml
- Bump zed_wrapper resolution to 1080p
- Run `kalibr_record.sh` or

```sh
roscore
```

```sh
roslaunch zed_wrapper zed2i.launch
```

```sh
rviz -d zed2i.rviz
```

```sh
rosbag record /zed2i/zed_node/right_raw/image_raw_color /zed2i/zed_node/left_raw/image_raw_color /zed2i/zed_node/imu/data_raw
```

- Run `kalibr_calibrate_mcc.sh zed2i.bag` or

```sh
rosrun kalibr kalibr_calibrate_cameras --bag zed2i.bag --topics /zed2i/zed_node/right_raw/image_raw_color /zed2i/zed_node/left_raw/image_raw_color --models pinhole-equi pinhole-equi --target target.yaml
```

- Run `kalibr_calibrate_imu.sh zed2i.bag camchain.yaml` or

```sh
rosrun kalibr kalibr_calibrate_imu_camera --bag zed2i.bag --cam camchain.yaml --imu imu.yaml --target target.yaml --timeoffset-padding 0.01
```

## Errors

- [kalibr_calibrate_imu_camera : Optimization failed](https://github.com/ethz-asl/kalibr/issues/41)

## References

- [Getting started with ZED and ROS](https://www.stereolabs.com/docs/ros/)
- [Kalibr Wiki](https://github.com/ethz-asl/kalibr/wiki/)
- [ZED2i datasheet](https://www.stereolabs.com/assets/datasheets/zed-2i-datasheet-feb2022.pdf)
