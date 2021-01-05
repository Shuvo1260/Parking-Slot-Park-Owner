import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/assets.dart';

class SplashLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
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
          ),
        ),
      ),
    );
  }
}
