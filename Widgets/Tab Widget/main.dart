import 'package:flutter/material.dart';
import 'Screens/chats.dart' as Chats;
import 'Screens/status.dart' as Status;
import 'Screens/calls.dart' as Calls;

void main() => runApp(
      MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text("WhatsApp"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.chat),
            ),
            Tab(
              icon: Icon(Icons.radio_button_checked),
            ),
            Tab(
              icon: Icon(Icons.call),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Container(
          height: 35,
          child: Image(
            image: AssetImage("lib/Images/drawer.png"),
          ),
        ),
        backgroundColor: Color(0xff25d366),
        onPressed: () {},
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Chats.FirstPage(),
          Status.FirstPage(),
          Calls.FirstPage()
        ],
      ),
    );
  }
}
