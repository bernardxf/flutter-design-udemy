import 'package:flutter/material.dart';
import 'package:helloworld/custom-circle-avatar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // RaisedButton(
          //   onPressed: () {
          //     print('Raisebutton');
          //   },
          //   color: Colors.blue,
          //   child: Text('Click Button')
          // ),

          // RaisedButton.icon(
          //   onPressed: () {
          //     print('Raisebutton Android');
          //   },
          //   icon: Icon(Icons.android),
          //   label:Text('Click button')
          // )

          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('B')
          ),
          SizedBox(height: 50),
          CustomCircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('B', style: TextStyle(color: Colors.white)),  
          )
        ],
      ),
    );
  }
}