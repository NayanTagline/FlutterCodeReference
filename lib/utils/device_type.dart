import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenRendering {
  static DeviceScreenType getScreenType({required BuildContext context}) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return deviceType;
  }

  static double responsiveHorizontalWidth(
      {required double webWithW,
      required double mobileWithSp,
      required BuildContext context}) {
    return kIsWeb &&
            ScreenRendering.getScreenType(context: context) ==
                DeviceScreenType.desktop
        ? webWithW
        : mobileWithSp;
  }

  static bool isMobile({required BuildContext context}) {
    return kIsWeb &&
            ScreenRendering.getScreenType(context: context) ==
                DeviceScreenType.desktop
        ? false
        : true;
  }
}
