import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("TextField"),
            centerTitle: true,
            backgroundColor: Color(0xff2B2B2B),
          ),
          body: TextFieldWidget()),
    ),
  );
}

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              // keyboardType: TextInputType.number,  // to change keyboard layout to number
              decoration: InputDecoration(
                hintText: "Enter Your Name :",
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Color(0xff2B2B2B)),
                ),
                prefixIcon: Icon(Icons.account_circle, color: Colors.grey),
              ),
              // textAlign: TextAlign.center,
              // onSubmitted: (String text) {
              //   setState(() {
              //     name = text;
              //   });
              // },
              onChanged: (String text) {
                setState(() {
                  name = text;
                });
              },
            ),
          ),
          Text(
            "Your Name is $name",
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
