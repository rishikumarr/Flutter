import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text("Add Note"),
            centerTitle: true,
            backgroundColor: Color(0xff2B2B2B),
          ),
          body: Todo(),
        ),
      ),
    );

class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TodoState();
  }
}

class TodoState extends State<Todo> {
  String event = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
      child: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey[300],
              height: 180.0,
              child: Card(
                color: Colors.white,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('lib/images/sticky2.png'),
                        ),
                        title: Text(
                          event,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: Colors.black87,
                          ),
                          onPressed: null,
                        ),
                        subtitle: Text(description),
                      ),
                    ),
                    Divider(
                      indent: 22.0,
                      endIndent: 22.0,
                      height: 2.0,
                      color: Colors.black38,
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 185.0),
                          FlatButton(
                            onPressed: null,
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 15.0),
                            ),
                          ),
                          FlatButton(
                            onPressed: null,
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 15.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Event",
                        labelText: "Event",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Color(0xff2B2B2B),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.push_pin,
                        ),
                      ),
                      onChanged: (String text) {
                        setState(() {
                          event = text;
                        });
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Description To Your Event",
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Color(0xff2B2B2B),
                          ),
                        ),
                        prefixIcon: Icon(Icons.library_books),
                      ),
                      onChanged: (String text) {
                        setState(
                          () {
                            description = text;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                      height: 40.0,
                      width: 140.0,
                      child: RaisedButton(
                        color: Color(0xff2B2B2B),
                        child: Text(
                          "Add Note",
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                        onPressed: () {},
                        elevation: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
