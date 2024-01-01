import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onPressed: onPressed,
      width: 70,
      height: 70,
      color: Colors.blue,
      shadowDegree: ShadowDegree.light,
      // elevation: 8,
      duration: 100,
      child: Icon(
        icon,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
