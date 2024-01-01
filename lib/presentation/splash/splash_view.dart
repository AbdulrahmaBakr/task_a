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
  final bool _isTapped = false;
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
    _delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AnimatedRoundedImage(), Text('click me ')],
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

class AnimatedRoundedImage extends StatefulWidget {
  const AnimatedRoundedImage({super.key});

  @override
  _AnimatedRoundedImageState createState() => _AnimatedRoundedImageState();
}

class _AnimatedRoundedImageState extends State<AnimatedRoundedImage> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleAnimation();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: _isTapped ? 300.0 : 150.0,
        height: _isTapped ? 300.0 : 150.0,
        curve: Curves.easeInOut,
        child: ClipOval(
          child: Image.asset(
            AssetsManager.splashLogo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _toggleAnimation() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedRoundedImage(),
      ),
    );
  }
}
