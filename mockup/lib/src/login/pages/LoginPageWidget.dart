import 'package:flutter/material.dart';
import 'package:mockup/src/login/provider/ProviderPageController.dart';
import 'package:mockup/src/login/widgets/CircleButton.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic, size: 40, color: Colors.white),
          Container(height: 25),
          RichText(
            text: TextSpan(
              text: 'Awesome',
              style: TextStyle(color: Colors.white, fontSize: 20),
              children: <TextSpan>[
                TextSpan(text: 'App', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(height: 120),
          CircleButton(
            label: 'SIGN UP',
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
            onTap: (){
              ProviderPageController.of(context).toPage(0);
            },
          ),
          Container(height: 25),
          CircleButton(
            label: 'SIGN IN',
            backgroundColor: Colors.white,
            textColor: Theme.of(context).accentColor,
            onTap: (){
              ProviderPageController.of(context).toPage(2);
            },
          ),
        ],
      ),
    );
  }
}