import 'package:flutter/material.dart';

class ViewBooking extends StatefulWidget {
  @override
  _ViewBookingState createState() => _ViewBookingState();
}

class _ViewBookingState extends State<ViewBooking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Text("data"),
          ),
        ),
      ),
    );
  }
}
