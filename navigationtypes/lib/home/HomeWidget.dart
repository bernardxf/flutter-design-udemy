import 'package:flutter/material.dart';
import 'package:navigationtypes/home/pages/ContaPage.dart';
import 'package:navigationtypes/home/pages/FavoritoPage.dart';
import 'package:navigationtypes/home/pages/InicioPage.dart';
import 'package:navigationtypes/home/widget/CustomDrawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

  var pages = <Widget> [
    InicioPage(),
    FavoritoPage(),
    ContaPage(),
  ];

  PageController _pageController = PageController(initialPage: 0);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyScaffold,
      drawer: CustomDrawer(
        pageController: _pageController,
        onPressed: (index){
          _keyScaffold.currentState.openEndDrawer();
          _pageController.jumpToPage(index);
        }
      ),
      appBar: AppBar(title: Text('Navegação')),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: pages,
      ),
    );
  }
}