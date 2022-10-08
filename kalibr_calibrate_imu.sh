#! /bin/bash

rosrun kalibr kalibr_calibrate_imu_camera --bag $1 --cam $2  --imu imu.yaml --target target.yaml --timeoffset-padding 0.01

