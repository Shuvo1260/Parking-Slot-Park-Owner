import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class WidgetTopLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _WidgetCarLogo(),
          _WidgetTopText(LOGIN_SCREEN_TOP_TEXT),
        ],
      ),
    );
  }
}

class _WidgetCarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        IMAGE_LAUNCHER_ICON,
        height: 70.0,
      ),
    );
  }
}

class _WidgetTopText extends StatelessWidget {
  final String text;
  _WidgetTopText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
          fontFamily: FONT_BANK_GOTHIC,
        ),
      ),
    );
  }
}

class WidgetLoginBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(LOGIN_REGISTRATION_BOTTOM_RADIUS),
          topRight: Radius.circular(LOGIN_REGISTRATION_BOTTOM_RADIUS),
        ),
      ),
    );
  }
}
