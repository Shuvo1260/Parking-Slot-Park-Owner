import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';
import 'package:parking_slot_seller/Utils/AuthManager.dart';

class RegistrationDesign extends StatefulWidget {
  @override
  _RegistrationDesignState createState() => _RegistrationDesignState();
}

class _RegistrationDesignState extends State<RegistrationDesign> {
  var _phone;
  var _email;
  var _address;
  var _password;
  var _name;

  AuthManager _authManager;

  @override
  void initState() {
    super.initState();
    _authManager = AuthManager();
  }

  void _signUpUser() {
    Fluttertoast.showToast(
      msg: "Signing up",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    print(
        "name: $_name email: $_email phoneNumber: $_phone, address: $_address, password: $_password");
    if (_checkValidity()) _authManager.isUserExist(_email);
  }

  bool _checkValidity() {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RADIUS_LOGIN_REGISTRATION_BOTTOM),
          topRight: Radius.circular(RADIUS_LOGIN_REGISTRATION_BOTTOM),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PADDING_HORIZONTAL_LOGIN_BOTTOM,
          vertical: PADDING_VERTICAL_LOGIN_BOTTOM,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginTextField(
              (value) {
                setState(() {
                  _name = value;
                });
              },
              hint: HINT_NAME,
              keyboardType: TextInputType.text,
              obscure: false,
            ),
            SizedBox(
              height: 30.0,
            ),
            LoginTextField(
              (value) {
                setState(() {
                  _phone = value;
                });
              },
              hint: HINT_PHONE,
              keyboardType: TextInputType.phone,
              obscure: false,
            ),
            SizedBox(
              height: 30.0,
            ),
            LoginTextField(
              (value) {
                setState(() {
                  _address = value;
                });
              },
              hint: HINT_ADDRESS,
              keyboardType: TextInputType.streetAddress,
              obscure: false,
            ),
            SizedBox(
              height: 30.0,
            ),
            LoginTextField(
              (value) {
                setState(() {
                  _email = value;
                });
              },
              hint: HINT_EMAIL,
              keyboardType: TextInputType.emailAddress,
              obscure: false,
            ),
            SizedBox(
              height: 30.0,
            ),
            LoginTextField(
              (value) {
                setState(() {
                  _password = value;
                });
              },
              hint: HINT_PASSWORD,
              keyboardType: TextInputType.visiblePassword,
              obscure: true,
            ),
            SizedBox(
              height: 50.0,
            ),
            SubmitButton(
              text: HINT_REGISTRATION,
              onPressed: () => _signUpUser(),
            ),
            SizedBox(
              height: 20.0,
            ),
            BottomOption(
              text: ALREADY_HAVE_AN_ACCOUNT,
              onPressed: () => Get.back(),
            )
          ],
        ),
      ),
    );
  }
}
