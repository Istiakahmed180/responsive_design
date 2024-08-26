import 'package:responsive_design/config/device_config/device_size.dart';
import 'package:responsive_design/config/device_config/device_type.dart';

class DeviceConfig {
  static getDeviceType(double width) {
    if (width < DeviceSize.mobileMaxSize) {
      return DeviceType.mobile;
    } else if (width >= DeviceSize.mobileMaxSize &&
        width < DeviceSize.tabletMaxSize) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}
