import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
