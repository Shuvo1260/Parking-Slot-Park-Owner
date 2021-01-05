import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Features/Screens/login.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

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

    // loadScreen();
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
<<<<<<< HEAD
        child: Column(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [COLOR_CARIBBEAN_GREEN, COLOR_SHAMROCK],
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(IMAGE_CAR_BACKGROUND_CLOUD),
                      ),
                    ),
                    child: Image.asset(
                      IMAGE_LAUNCHER_ICON,
||||||| fe141a1
          child: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [COLOR_CARIBBEAN_GREEN, COLOR_SHAMROCK],
              ),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(IMAGE_CAR_BACKGROUND_CLOUD),
=======
        child: Container(
          // height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [COLOR_CARIBBEAN_GREEN, COLOR_SHAMROCK],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      height: 300.0,
                      // height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(IMAGE_CAR_BACKGROUND_CLOUD),
                        ),
                      ),
                      child: Image.asset(
                        IMAGE_LAUNCHER_ICON,
                      ),
>>>>>>> d877388
                    ),
<<<<<<< HEAD
                  ),
||||||| fe141a1
                  ),
                  child: Image.asset(
                    IMAGE_LAUNCHER_ICON,
                  ),
=======
                  ),
>>>>>>> d877388
                ),
              ),
<<<<<<< HEAD
            ),
          ],
        ),
      ),
||||||| fe141a1
            ),
          ),
        ],
      )),
=======
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      APP_NAME,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      SPLASH_SCREEN_MESSAGE,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
>>>>>>> d877388
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
