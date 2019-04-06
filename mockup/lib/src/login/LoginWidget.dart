import 'package:flutter/material.dart';
import 'package:mockup/src/login/pages/LoginPageWidget.dart';
import 'package:mockup/src/login/pages/SignInPageWidget.dart';
import 'package:mockup/src/login/pages/SignUpPageWidget.dart';
import 'package:mockup/src/login/provider/ProviderPageController.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/imgs/monte.jpeg', fit: BoxFit.cover),
          ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                SignUpPageWidget(),
                LoginPageWidget(),
                SignInPageWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}