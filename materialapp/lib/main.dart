import 'package:flutter/material.dart';
import 'package:materialapp/BodyWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(

        drawer: Drawer(
          child: Column(
            children: <Widget>[
              // DrawerHeader(
              //   child: Container(
              //     color: Colors.red,
              //   ),
              // ),
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(child: Text('BF')),
                accountName: Text('Bernard Faria'),
                accountEmail: Text('bernardxf@gmail.com'),
              ),
              ListTile(leading: Icon(Icons.menu), title: Text('Home')),
              ListTile(leading: Icon(Icons.account_circle), title: Text('Account')),
              ListTile(leading: Icon(Icons.notifications), title: Text('Notification')),
              ListTile(leading: Icon(Icons.arrow_back), title: Text('Exit')),
            ],
          ),
        ),

        appBar: AppBar(
          // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text('My App'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.not_interested), onPressed: () {}),
          ],
        ),

        body: BodyWidget(),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Clicou no floatButton');
          },
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text('Camera')),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Account')),
          ],
        ),
      ),
    );
  }
}
