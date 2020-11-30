import 'package:flutter/material.dart';
import 'counter_page.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Widget Communication"),
            centerTitle: true,
            backgroundColor: Color(0xff2B2B2B),
          ),
          body: Counter(),
        ),
      ),
    );
