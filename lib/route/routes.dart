import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/otp/get_otp_screen.dart';
import 'package:watch_store/screens/otp/register_screen.dart';
import 'package:watch_store/screens/otp/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.sendOtpScreen: (p0) => SendOtpScreen(),
  ScreenNames.getOtpScreen: (p0) => GetOtpScreen(),
  ScreenNames.registerScreen: (p0) => RigsterScreen(),
};
