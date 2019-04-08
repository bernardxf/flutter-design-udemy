import 'package:flutter/material.dart';
import 'package:navigationtypes/home/HomeController.dart';
import 'package:navigationtypes/home/pages/ContaPage.dart';
import 'package:navigationtypes/home/pages/FavoritoPage.dart';
import 'package:navigationtypes/home/pages/InicioPage.dart';
import 'package:navigationtypes/home/widget/CustomDrawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  var pages = <Widget> [
    InicioPage(),
    FavoritoPage(),
    ContaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text('Navegação')),
      body: StreamBuilder<int>(
        stream: HomeController.of(context).drawerChangeOutput,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return pages[snapshot.data];
        },
      ),
    );
  }
}