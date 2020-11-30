import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  final Function(int) onchanged;
  Count({this.count, this.onchanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                size: 40.0,
              ),
              onPressed: () {
                onchanged(1);
              },
            ),
            SizedBox(
              width: 30.0,
            ),
            Text(
              '$count',
              style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(
              width: 30.0,
            ),
            IconButton(
              icon: Icon(
                Icons.remove,
                size: 40.0,
              ),
              onPressed: () {
                onchanged(-1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
