import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Controllers/UserController.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Data/Sources/Remote/UserDataManager.dart';
import 'package:parking_slot_seller/Features/Widgets/ProfileWidgets.dart';
import 'package:parking_slot_seller/Utils/AppManager.dart';

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

    getValue();
  }

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void getValue() async {
    var id = AppManager.emailToID(_firebaseAuth.currentUser.email);
    var values = await UserDataManager.getUserData(id);
    setState(() {
      _userData = values;
    });
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
