import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/routes_manager.dart';

class SplahScrean extends StatelessWidget {
  const SplahScrean({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
      }
    });
    return Scaffold(
      body: Image.asset(
        AssetsManager.lightSplash,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
