import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class AddPlaceTextField extends StatelessWidget {
  Function onTextChange;
  var hint;
  var keyboardType;
  var obscure;

  AddPlaceTextField(this.onTextChange,
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
            fontSize: FONT_SIZE_LOGIN_FIELDS,
            fontFamily: FONT_BANK_GOTHIC,
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
