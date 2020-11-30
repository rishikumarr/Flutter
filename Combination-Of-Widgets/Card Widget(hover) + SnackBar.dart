import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Do List"),
          centerTitle: true,
          backgroundColor: Color(0xff2B2B2B),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
            child: BookMark(),
          ),
        ),
      ),
    ),
  );
}

class BookMark extends StatefulWidget {
  @override
  BookMarkState createState() => BookMarkState();
}

class BookMarkState extends State<BookMark> {
  bool bookMarked = false;
  String ifTrue = "Bookmarked";
  String ifFalse = "Unmarked";
  bookMarkAction() {
    setState(
      () {
        if (bookMarked) {
          marked(context, ifFalse);
          this.bookMarked = false;
        } else {
          marked(context, ifTrue);
          this.bookMarked = true;
        }
        // bookMarked ? bookMarked = false : bookMarked = true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: bookMarked ? 20.0 : 0.0,
      color: bookMarked ? Colors.grey[400] : Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.black87),
            title: Text("Read Book"),
            subtitle: Text("Complete Famous Five"),
            trailing: IconButton(
              icon: Icon(bookMarked ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.black87),
              onPressed: () => bookMarkAction(),
            ),
          )
        ],
      ),
    );
  }
}

void marked(BuildContext context, text) {
  var snackBarWidget = SnackBar(content: Text(text));
  Scaffold.of(context).showSnackBar(snackBarWidget);
}
