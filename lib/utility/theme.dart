import 'package:flutter/material.dart';
import 'package:watch_store/utility/colors.dart';
import 'package:watch_store/utility/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryColor: LightAppColors.primaryColor,
      scaffoldBackgroundColor: LightAppColors.scaffoldBackgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.focused)) {
              return LightAppColors.focusedTextField;
            } else {
              return LightAppColors.unFocusedTextField;
            }
          }),
          contentPadding: const EdgeInsets.all(AppDimens.medium),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimens.medium),
            borderSide: const BorderSide(color: LightAppColors.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimens.medium),
            borderSide: const BorderSide(color: LightAppColors.primaryColor),
          )));
}
