import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/values.dart';

class UserNameImageWidget extends StatelessWidget {
  const UserNameImageWidget({
    Key key,
    @required UserData userData,
  })  : _userData = userData,
        super(key: key);

  final UserData _userData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(RADIUS_LIST_ITEM),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _ProfileImage(userData: _userData),
          _ProfileUserName(userData: _userData),
        ],
      ),
    );
  }
}

class _ProfileUserName extends StatelessWidget {
  const _ProfileUserName({
    Key key,
    @required UserData userData,
  })  : _userData = userData,
        super(key: key);

  final UserData _userData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          _userData.name,
          style: TextStyle(
            color: COLOR_CARIBBEAN_GREEN,
            fontFamily: FONT_BANK_GOTHIC,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({
    Key key,
    @required UserData userData,
  })  : _userData = userData,
        super(key: key);

  final UserData _userData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(_userData.imageUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
