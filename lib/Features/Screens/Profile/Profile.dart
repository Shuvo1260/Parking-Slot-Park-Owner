import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Controllers/UserController.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Features/Widgets/ProfileWidgets.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserData _userData;
  final _userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();

    _userData = _userController.userData as UserData;
    print("UserData: $_userData");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserNameImageWidget(userData: _userData),
          UserDetailsWidget(userData: _userData),
          SignOutWidget()
        ],
      ),
    );
  }
}
