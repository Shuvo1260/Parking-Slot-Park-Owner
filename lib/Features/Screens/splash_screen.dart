import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Features/Screens/login.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MaterialApp(
        home: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("Splash");

    // Start full screen
    SystemChrome.setEnabledSystemUIOverlays([]);

    loadScreen();
  }

  @override
  void dispose() {
    super.dispose();
    // Exit full screen
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("Temp"),
        ),
      ),
    );
  }

  Future<Timer> loadScreen() async {
    return Timer(
      Duration(seconds: 3),
      () {
        print("3 seconds");
        Get.off(
          LoginScreen(),
        );
      },
    );
  }
}
