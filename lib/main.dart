import 'package:book_reader/tab_navigator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ryan阅读',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: TabNavigator(),
    );
  }
}

