import 'package:flutter/material.dart';
import 'package:navigationapp/SecondWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigatior'),
      ),
      body:Center(
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.purple,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return SecondWidget();
            }));
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
            //   return SecondWidget();
            // }));
          },
          child: Text('Next Widget'),
        ),
      )
    );
  }
}