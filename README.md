# ZED2i Camera Calibration

## Dependencies

[ZED SDK](https://www.stereolabs.com/developers/release)
[Kalibr](https://github.com/ethz-asl/kalibr)

## Calibration

- Generate aprilgrid and target.yaml
- Bump zed_wrapper resolution to 1080p
- Run `kalibr_record.sh`
- Run `kalibr_calibrate_mcc.sh zed2i.bag`
- Run `kalibr_calibrate_imu.sh zed2i.bag camchain.yaml`

## Errors

- [kalibr_calibrate_imu_camera : Optimization failed](https://github.com/ethz-asl/kalibr/issues/41)

## References

- [Kalibr Wiki](https://github.com/ethz-asl/kalibr/wiki/)
- [ZED2i datasheet](https://www.stereolabs.com/assets/datasheets/zed-2i-datasheet-feb2022.pdf)
