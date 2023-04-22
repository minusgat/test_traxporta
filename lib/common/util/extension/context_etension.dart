import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';


extension ContextExtension on BuildContext {
  bool get isLargeScreen {
    final screenSize = MediaQuery.of(this).size.width;
    return screenSize >= 640;
  }

  ScreenSize get screenSize {
    final screenSize = MediaQuery.of(this).size.width;
    return screenSize >= 640 ? ScreenSize.large : ScreenSize.small;
  }

  bool get isSmallScreen {
    final screenSize = MediaQuery.of(this).size.width;
    return screenSize < 640;
  }
}