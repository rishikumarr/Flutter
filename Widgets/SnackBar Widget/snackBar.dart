import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffCECCBE),
        appBar: AppBar(
          title: Text("Snack Bar Widget"),
          centerTitle: true,
          backgroundColor: Color(0xff2B2B2B),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 50.0,
            child: Builder(
              builder: (context) => RaisedButton(
                color: Colors.orangeAccent,
                onPressed: () {
                  snackBarWidget(context);
                },
                child: Text(
                  "Show SnackBar",
                  style: TextStyle(fontSize: 20.0),
                ),
                elevation: 16.0,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

void snackBarWidget(BuildContext context) {
  var snackBar = SnackBar(
    content: Text("Here's Your SnackBar"),
    elevation: 16.0,
    action: SnackBarAction(
      label: "Undo",
      onPressed: () {
        debugPrint("Undo");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
