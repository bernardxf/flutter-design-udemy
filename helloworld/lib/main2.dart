import 'package:flutter/material.dart';
import 'package:helloworld/button-text-icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   body: HomeWidget(),
      // ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit:BoxFit.cover
            )
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Image.asset("assets/images/logo.png"),
              ButtonTextIcon(
                color: Colors.red,
                text: 'Login com Google',
                iconData: Icons.add
              ),
              ButtonTextIcon(
                color: Colors.blue,
                text: 'Login com Facebook',
                iconData: Icons.wifi
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(color: Colors.cyan, height: 50, width: 50),
                  Container(color: Colors.indigo, height: 50, width: 50),
                  Container(color: Colors.pink, height: 50, width: 50),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}