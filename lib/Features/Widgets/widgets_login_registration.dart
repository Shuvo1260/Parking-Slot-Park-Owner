import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
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
    return Hero(
      tag: TAG_CAR_LOGO,
      child: Container(
        child: Image.asset(
          IMAGE_LAUNCHER_ICON,
          height: 70.0,
        ),
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

class WidgetLoginBottom extends StatefulWidget {
  @override
  _WidgetLoginBottomState createState() => _WidgetLoginBottomState();
}

class _WidgetLoginBottomState extends State<WidgetLoginBottom> {
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
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PADDING_HORIZONTAL_LOGIN_BOTTOM,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _TextField(
              (value) {
                print(value);
              },
              hint: HINT_EMAIL,
              keyboardType: TextInputType.emailAddress,
              obscure: false,
            ),
            SizedBox(
              height: 30.0,
            ),
            _TextField(
              (value) {
                print(value);
              },
              hint: HINT_PASSWORD,
              keyboardType: TextInputType.visiblePassword,
              obscure: true,
            ),
            SizedBox(
              height: 30.0,
            ),
            _SubmitButton()
          ],
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [COLOR_CARIBBEAN_GREEN, COLOR_SHAMROCK],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: PADDING_VERTICAL_BUTTON),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: FONT_SIZE_BUTTON,
            fontWeight: FontWeight.bold,
            fontFamily: FONT_BANK_GOTHIC,
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  Function onTextChange;
  var hint;
  var keyboardType;
  var obscure;
  _TextField(this.onTextChange,
      {this.hint, this.keyboardType, @required this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PADDING_HORIZONTAL_LOGIN_FIELDS,
          vertical: PADDING_VERTICAL_LOGIN_FIELDS,
        ),
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintStyle: TextStyle(
              color: COLOR_SHAMROCK,
              fontFamily: FONT_BANK_GOTHIC,
            ),
          ),
          onChanged: (value) {
            onTextChange(value);
          },
          style: TextStyle(
            color: COLOR_CARIBBEAN_GREEN,
            fontSize: LOGIN_FIELDS_TEXT_SIZE,
            fontFamily: FONT_BANK_GOTHIC,
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
