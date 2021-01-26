import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Resources/values.dart';

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
        name: "Name",
        phoneNumber: "0164578942",
        address: "Dhaka",
        email: "email@email.com",
        password: "test");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
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
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(_userData.imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              )

              // Text("Name")
            ],
          ),
        ),
      ],
    ));
  }
}
