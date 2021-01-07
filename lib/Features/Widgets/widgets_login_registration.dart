import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/assets.dart';

class WidgetTopLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0,
          ),
          _WidgetCarLogo(),
          _WidgetTopText("Welcome"),
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
        height: 80.0,
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
          fontSize: 24.0,
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
    return Container();
  }
}
