// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/route/routes.dart';
import 'package:watch_store/utility/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // Persian
      ],
      locale: const Locale('fa'),
      title: 'فروشگاه ساعت',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      initialRoute: ScreenNames.root,
      routes: routes,
    );
  }
}
