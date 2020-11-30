import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text("Card Widget"),
          centerTitle: true,
          backgroundColor: Color(0xff2B2B2B),
        ),
        body: cardWidget(),
      ),
    ),
  );
}

Widget cardWidget() {
  var card = Center(
    child: Padding(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
      child: Card(
        elevation: 20.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.book, color: Colors.black87),
              title: Text(
                "Read Book",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Read Famous Five"),
              onTap: () {
                print("You Clicked");
              },
              trailing: IconButton(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.black87,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    ),
  );
  return card;
}
