import "package:flutter/material.dart";

void main() => runApp(Neu());

class Neu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Neumorphism(),
    );
  }
}

class Neumorphism extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NeumorphismState();
  }
}

class NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Icon(
            Icons.account_box,
            size: 100,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.all(Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[500],
                  offset: Offset(5.0, 5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5.0, -5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
          ),
        ),
      ),
    );
  }
}
