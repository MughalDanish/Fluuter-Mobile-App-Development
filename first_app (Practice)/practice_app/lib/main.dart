import 'package:flutter/material.dart';
import 'package:practice_app/Pages/home.dart';
import 'package:practice_app/Pages/tree_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tree_widget(),
    );
  }
}
