import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_value.dart';

class EzConstLayout {
  EzConstLayout._();

  // Spacers
  static const double spacerExtraSmall = EzConstValue.dp4;
  static const double spacerSmall = EzConstValue.dp8;
  static const double spacer = EzConstValue.dp16;
  static const double spacerMedium = EzConstValue.dp24;

  // Borders and Corners
  static const double borderSize = EzConstValue.dp1;
  static const double borderRadiusSmall = EzConstValue.dp8;
  static const double borderRadius = EzConstValue.dp16;

  static BorderRadius getBorderRadius() => BorderRadius.circular(
    borderRadius,
  );

  // Button and Icon Sizes
  static const double buttonHeight = EzConstValue.dp48;
  static const double iconSmallSize = EzConstValue.dp16;
  static const double iconMediumSize = EzConstValue.dp24;
  static const double iconLargeSize = EzConstValue.dp32;

  // Layout Dimensions
  static const double maxWidthDialogSmall = EzConstValue.dp320;
  static const double maxWidthDialogMedium = EzConstValue.dp640;

  // Sizes
  static const double itemHeight = EzConstValue.dp40;

  // Disabled Opacity
  static const double disabledOpacity = 0.30;
}
