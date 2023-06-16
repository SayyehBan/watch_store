import 'package:flutter/material.dart';

abstract class LightAppColors {
  LightAppColors._();
  static const Color title = Colors.black;
  static const Color hint = Colors.grey;
  static const Color appBar = Colors.white;
  static const Color scaffoldBackgroundColor =
      Color.fromARGB(255, 251, 251, 251);
  static const Color border = Colors.grey;
  static const Color focusedBorder = Colors.blue;
  static const Color primaryColor = Colors.blue;
  static const Color focusedTextField = Colors.white;
  static const Color unFocusedTextField = Color.fromARGB(255, 251, 251, 251);
}

abstract class DarkAppColors {
  DarkAppColors._();
  static const Color title = Colors.black;
  static const Color hint = Colors.grey;
  static const Color appBar = Colors.white;
  static const Color border = Colors.grey;
  static const Color focusedBorder = Colors.blue;
  static const Color primaryColor = Colors.blue;
}
