 

import 'package:flutter/material.dart';
import 'package:task_a/resources/routes_manager.dart';
import 'package:task_a/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  // const MyApp({super.key}); defulet constactor
  const MyApp._internal(); //named constactor
  static const MyApp instance = MyApp._internal();
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(
        
      ),
    );
  }
}
