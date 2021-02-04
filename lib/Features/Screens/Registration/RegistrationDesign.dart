import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';
import 'package:parking_slot_seller/Utils/AppManager.dart';
import 'package:parking_slot_seller/Utils/AuthManager.dart';

class RegistrationDesign extends StatefulWidget {
  @override
  _RegistrationDesignState createState() => _RegistrationDesignState();
}

class _RegistrationDesignState extends State<RegistrationDesign> {
  var _name;
  var _phone;
  var _email;
  var _address;
  var _password;

  AuthManager _authManager;

  @override
  void initState() {
    super.initState();
    _authManager = AuthManager();
  }

  void _signUpUser() async {
    print(
        "name: $_name email: $_email phoneNumber: $_phone, address: $_address, password: $_password");
    if (_checkValidity()) {
      var id = AppManager.emailToID(_email);
      if (!await _authManager.isUserExist(id)) {
        UserData userData = UserData(
          id: id,
          name: _name,
          phoneNumber: _phone,
          address: _address,
          email: _email,
          password: _password,
          imageUrl: null,
        );
        AppManager.showToast(message: "Signing up");

        if (await _authManager.signUP(userData)) {
          AppManager.showToast(message: "Successfully signed up");
        } else {
          AppManager.showToast(
              message: "Signing failed", backgroundColor: Colors.red);
        }
      } else {
        AppManager.showToast(
            message: "This email has registered before",
            backgroundColor: Colors.blue);
      }
    }
  }

  bool _checkValidity() {
    if (_name == null) {
      showToast("Name can't be empty");
      return false;
    }
    if (_phone == null) {
      showToast("Phone can't be empty");
      return false;
    }
    if (_address == null) {
      showToast("Address can't be empty");
      return false;
    }
    if (_email == null) {
      showToast("Email can't be empty");
      return false;
    }
    if (_password == null) {
      showToast("Password can't be empty");
      return false;
    }

    if (!AppManager.isEmailValid(_email)) {
      showToast("Please enter a valid email");
      return false;
    }

    return true;
  }

  void showToast(message) {
    AppManager.showToast(
      message: message,
      backgroundColor: Colors.red,
    );
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
