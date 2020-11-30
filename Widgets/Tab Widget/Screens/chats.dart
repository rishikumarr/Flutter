import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Chats",
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xff075e54), fontSize: 25.0),
      ),
    );
  }
}
