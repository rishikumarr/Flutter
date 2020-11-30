import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My New App",
      home: Scaffold(
        body: AlertBox(),
      ),
    ),
  );
}

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 320.0),
            width: 250.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                openAlertDialog(context);
              },
              child: Text(
                "Open Alert Box",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                  // fontFamily: 'Poppins',
                ),
              ),
              color: Colors.deepOrange,
              elevation: 16.0,
            ),
          ),
        ),
      ],
    );
  }

  void openAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Hello Rishi"),
      content: Text("Here's your Alert Dialog"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
