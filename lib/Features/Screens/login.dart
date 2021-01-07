import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: COLOR_CARIBBEAN_GREEN,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [COLOR_CARIBBEAN_GREEN, COLOR_SHAMROCK],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                WidgetTopLogo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
