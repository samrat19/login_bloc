import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Error',style: TextStyle(
          color: Colors.red,
          fontSize: 40.0
        ),),
      ),
    );
  }
}
