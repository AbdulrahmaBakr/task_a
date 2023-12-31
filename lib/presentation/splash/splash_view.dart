import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_a/resources/assets_manager.dart';
import 'package:task_a/resources/color_manager.dart';
import 'package:task_a/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _delay() {
    _timer = Timer(const Duration(seconds: 10), next);
  }

  next() async {
    await Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    // _delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Center(
          child: ClipOval(
            child: SizedBox(
              width: 300.0, // Adjust the width as needed
              height: 300.0, // Adjust the height as needed
              child: Image.asset(
                AssetsManager.splashLogo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
