import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:task_a/resources/assets_manager.dart';
import 'package:task_a/resources/color_manager.dart';
import 'package:task_a/resources/routes_manager.dart';

class OnBoardingView extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'playful bot ',
      subTitle: 'hello with playful bot it\'s funny game ',
      imageUrl: AssetsManager.onboarding1,
    ),
    Introduction(
      title: 'Control',
      subTitle: 'you have many attractive buttons to control your bot easily',
      imageUrl: AssetsManager.onboarding2,
    ),
    Introduction(
      title: 'Let\'s play ',
      subTitle: 'Make your children\'s senses more aware and make them smarter',
      imageUrl: AssetsManager.onboarding3,
    ),
  ];

  OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroScreenOnboarding(
        backgroudColor: const Color(0xFFf9f9f9),
        foregroundColor: ColorManager.secondary,
        introductionList: list,
        onTapSkipButton: () =>
            Navigator.pushReplacementNamed(context, Routes.main),
        skipTextStyle: TextStyle(
          color: ColorManager.secondary,
          fontSize: 18,
        ),
      ),
    );
  }
}
