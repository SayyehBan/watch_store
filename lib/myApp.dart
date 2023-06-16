// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:watch_store/screens/otp/send_otp_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'فروشگاه ساعت',
      debugShowCheckedModeBanner: false,
      home: Directionality(
          textDirection: TextDirection.rtl, child: SendOtpScreen()),
    );
  }
}
