import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Screens/splash_screen.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Creating app
    return GetMaterialApp(
      home: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
