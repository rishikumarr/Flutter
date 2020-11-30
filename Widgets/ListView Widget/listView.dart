// When it comes to memeory efficiency List View is not recommended
// If you want more List View with high memory efficiency,
//use ListViewBuilder(lisViewBuilder.dart)

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "List View",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[850],
            title: Text("To Do"),
            centerTitle: true,
          ),
          body: getListView()),
    ),
  );
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.add_shopping_cart,
        ),
        title: Text("Go To Grocery Shop"),
        subtitle: Text("Buy Noodles"),
        hoverColor: Colors.grey,
        onTap: () {
          debugPrint("Buy Noodles");
        },
      ),
      Divider(
        thickness: 2.0,
        color: Colors.grey,
      ),
      ListTile(
        leading: Icon(
          Icons.access_alarm,
        ),
        title: Text("Birthday Wish"),
        subtitle: Text("Wish Ravi"),
        hoverColor: Colors.grey,
        onTap: () {
          debugPrint("Wish Ravi");
        },
      ),
      Divider(
        thickness: 2.0,
        color: Colors.grey,
      ),
      ListTile(
        leading: Icon(
          Icons.add_to_drive,
        ),
        title: Text("Upload files to Google Drive"),
        subtitle: Text("Upload Resume"),
        hoverColor: Colors.grey,
        onTap: () {
          debugPrint("Upload Resume");
        },
      ),
      Divider(
        thickness: 2.0,
        color: Colors.grey,
      ),
    ],
  );
  return listView;
}
