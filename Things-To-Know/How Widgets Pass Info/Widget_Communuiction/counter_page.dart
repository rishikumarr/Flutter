import 'count.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CounterState();
}

class CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Count(
      count: count,
      onchanged: (int val) {
        setState(
          () {
            count += val;
          },
        );
      },
    );
  }
}
