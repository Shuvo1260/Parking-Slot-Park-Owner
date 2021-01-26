import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Features/Widgets/ProfileWidgets.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserData _userData;

  @override
  void initState() {
    super.initState();
    _userData = UserData(
        id: 1,
        name: "The name of place owner",
        phoneNumber: "0164578942",
        address: "Dhaka",
        email: "email@email.com",
        password: "test",
        imageUrl:
            "https://img.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg?size=626&ext=jpg");
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
