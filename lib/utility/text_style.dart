import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/utility/colors.dart';

class LightAppTextStyles {
  LightAppTextStyles._();
  static const TextStyle title = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: LightAppColors.title,
  );
  static const TextStyle hint = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.hint,
  );
  static const TextStyle button = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: LightAppColors.button,
  );
  static const TextStyle avatarText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 11,
      color: LightAppColors.title,
      fontWeight: FontWeight.w700);

  static const TextStyle link = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 11,
      color: LightAppColors.primaryColor,
      fontWeight: FontWeight.w700);
}
