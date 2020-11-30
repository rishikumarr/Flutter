import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DropDown Widget"),
          centerTitle: true,
          backgroundColor: Color(0xff2B2B2B),
        ),
        backgroundColor: Color(0xffCECCBE),
        body: DropDownWidget(),
      ),
    ),
  );
}

class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  var genderList = ["Male", "Female", "Other"];
  var genderSelected = "Male";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(100.0),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: genderList.map((String gender) {
                return DropdownMenuItem(value: gender, child: Text(gender));
              }).toList(),
              onChanged: (String text) {
                setState(() {
                  genderSelected = text;
                });
              },
              value: genderSelected,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "You Selected $genderSelected",
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
