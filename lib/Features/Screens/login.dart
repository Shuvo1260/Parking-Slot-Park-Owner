import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 1,
                  child: WidgetTopLogo(),
                ),
                Flexible(
                  flex: 3,
                  child: WidgetLoginBottom(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
