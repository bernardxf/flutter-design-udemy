import 'package:flutter/material.dart';
import 'package:mockup/src/login/provider/ProviderPageController.dart';
import 'package:mockup/src/login/widgets/CircleButton.dart';
import 'package:mockup/src/login/widgets/CustomTextField.dart';

class SignUpPageWidget extends StatefulWidget {
  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic, size: 50, color: Theme.of(context).accentColor),
          Container(height: 25),
          CustomTextField(label: 'E-MAIL', hint: 'bernardxf@gmail.com'),
          Container(height: 25),
          CustomTextField(label: 'PASSWORD', hint: '************'),
          Container(height: 25),
          CustomTextField(label: 'CONFIRM PASSWORD', hint: '************'),
          Container(height: 25),
          GestureDetector(
            onTap: (){
              ProviderPageController.of(context).toPage(2);
            },
            child: Container(
              width: double.infinity,
              child: Text('Already have an account?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor)
              )
            ),
          ),
          Container(height: 40),
          CircleButton(label: 'SIGN UP'),
        ],
      ),
    );
  }
}