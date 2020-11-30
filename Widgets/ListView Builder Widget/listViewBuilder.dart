// Saves memory when compared to ListView

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text("To Do"),
          centerTitle: true,
        ),
        body: getListView(),
      ),
    ),
  );
}

List<String> listItems() {
  var items = List<String>.generate(100, (counter) => "Item No $counter");
  return items;
}

Widget getListView() {
  var list = listItems();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(list[index]),
        subtitle: Text("Insert Your Text Here"),
        leading: Icon(Icons.arrow_right),
        onTap: () {
          debugPrint("You clicked ${list[index]}");
        },
      );
    },
  );
  return listView;
}
