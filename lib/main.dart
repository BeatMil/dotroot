import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: './DotRoot',
      home: Scaffold(
        appBar: AppBar(
          title: Text('./DotRoot'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
