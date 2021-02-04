import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Features/Screens/Registration/Registration.dart';
import 'package:parking_slot_seller/Features/Widgets/widgets_login_registration.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class DesignLoginBottom extends StatefulWidget {
  @override
  _DesignLoginBottomState createState() => _DesignLoginBottomState();
}

class _DesignLoginBottomState extends State<DesignLoginBottom> {
  var _email;
  var _password;

  void _signIn() {
    //
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
                  _email = value;
                });
                print(value);
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
                print(value);
              },
              hint: HINT_PASSWORD,
              keyboardType: TextInputType.visiblePassword,
              obscure: true,
            ),
            SizedBox(
              height: 50.0,
            ),
            SubmitButton(
              text: HINT_LOGIN,
              onPressed: () {
                print("Pressed");
                _signIn();
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            BottomOption(
              text: CREATE_A_NEW_ACCOUNT,
              onPressed: () {
                Get.to(
                  RegistrationScreen(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
