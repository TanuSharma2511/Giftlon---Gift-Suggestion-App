import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Suggestion App',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

