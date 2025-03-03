import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color textWhite;
  final Color iconWhite;
  final Color dividerGrey;
  final Color background;
  final Color textGrey;
  final Color highLightItem;
  final Color transparent;
  final Color iconPrimary;
  final Color iconSecondary;
  final Color inputBorder;
  final Color inputHintText;
  final Color inputBorderError;
  final Color inputBorderFocus;
  final Color inputBorderReadonly;
  final Color inputBackground;

  const AppColors.dark()
    : primary = Colors.orange,
      textWhite = const Color(0xFFFFF7FA),
      iconWhite = const Color(0xFFFFFFFF),
      dividerGrey = const Color(0x24F8F1F1),
      background = const Color(0x24F8F1F1),
      textGrey = const Color(0x4FAFA2A2),
      highLightItem = const Color(0xFFEF6C00),

      transparent = Colors.transparent,
      iconPrimary = const Color(0xff5771c4),
      iconSecondary = const Color(0xff808080),
      inputBorder = const Color(0xff454545),
      inputHintText = const Color(0xff808080),
      inputBorderError = const Color(0xffc30011),
      inputBorderFocus = const Color(0xff5771c4),
      inputBorderReadonly = const Color(0xff303030),
      inputBackground = const Color(0xff202020);
}
