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
        appBar: AppBar(),
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {

  _onPressed() {
    print('Clicado no item');
  }

  Widget _listTile() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Item 1'),
      subtitle: Text('subtitle 1'),
      onTap: _onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // child: SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 150, width: 150, color: Colors.purple)
      //       ),
      //     ],
      //   ),
      // ),

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // _listTile(),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android), onPressed: () {},
          ),
        ],
      ),
    );
  }
}