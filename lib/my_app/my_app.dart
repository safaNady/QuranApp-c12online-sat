import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/screens/home/home_screan.dart';
import 'package:quran_app/presentation/screens/splash/splash_screan.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.splashRoute: (_) => SplahScrean(),
        RoutesManager.homeRoute: (_) => HomeScrean(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
