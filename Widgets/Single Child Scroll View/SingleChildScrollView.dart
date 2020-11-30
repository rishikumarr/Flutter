import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Single Child Scroll View"),
              centerTitle: true,
              backgroundColor: Color(0xff2B2B2B),
            ),
            body: Scroll()),
      ),
    );

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[400],
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 450,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[700]),
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(
                  20)), // if you change Radius.circular(100) our container will be changed to circle
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[500],
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 80.0,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
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
                              'event',
                              style: TextStyle(fontSize: 19.0),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: Colors.black87,
                                size: 30.0,
                              ),
                              onPressed: null,
                            ),
                            subtitle: Text('description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
