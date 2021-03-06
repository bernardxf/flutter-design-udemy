import 'package:flutter/material.dart';
import 'package:navigationtypes/home/HomeController.dart';
import 'package:navigationtypes/home/HomeWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeController(child: HomeWidget()),
    );
  }
}