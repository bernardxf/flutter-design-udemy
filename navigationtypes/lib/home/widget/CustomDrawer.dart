import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  final Function(int) onPressed;
  final PageController pageController;

  const CustomDrawer({Key key, this.onPressed, this.pageController}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            selected: pageController.page.round() == 0,
            title: Text('Início'),
            onTap: (){ onPressed(0); },
          ),
          ListTile(
            selected: pageController.page.round() == 1,
            title: Text('Favoritos'),
            onTap: (){ onPressed(1); },
          ),
          ListTile(
            selected: pageController.page.round() == 2,
            title: Text('Conta'),
            onTap: (){ onPressed(2); },
          ),
          ListTile(
            title: Text('Sair'),
          ),
        ],
      ),
    );
  }
}