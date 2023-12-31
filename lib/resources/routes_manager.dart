import 'package:flutter/material.dart';
import 'package:task_a/presentation/onboarding/onboarding_view.dart';
import 'package:task_a/presentation/splash/splash_view.dart';
import 'package:task_a/resources/strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
