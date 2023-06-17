import 'package:flutter/material.dart';
import 'package:watch_store/utility/dimens.dart';

class AppButtonStlyes {
  AppButtonStlyes._();
  static ButtonStyle mainButtonStyle = ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.medium))));
}
