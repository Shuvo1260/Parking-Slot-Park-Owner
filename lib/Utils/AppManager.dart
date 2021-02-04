import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class AppManager {
  static void showToast({@required message, backgroundColor, textColor}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor:
          (backgroundColor != null) ? backgroundColor : COLOR_CARIBBEAN_GREEN,
      textColor: (textColor != null) ? textColor : Colors.white,
      fontSize: 16.0,
    );
  }

  static String emailToID(email) {
    return email.replaceAll(".", "").split("@").first;
  }
}
