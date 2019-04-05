import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Text('Conta de usuário')),
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: ClipOval(
              child: Image.network('http://br.web.img2.acsta.net/pictures/18/06/29/00/35/0101925.jpg', fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 30),
          Text('Robert Downey Jr', style: TextStyle(color: Colors.grey[700], fontSize: 24, fontWeight: FontWeight.bold)),
          Text('robertdowneyjr@gmail.com', style: TextStyle(color: Colors.grey, fontSize: 18)),
          SizedBox(height: 30),
          // ButtonTheme(
          //   minWidth: 150,
          //   child: RaisedButton.icon(
          //     onPressed: () {},
          //     textColor: Colors.white,
          //     icon: Icon(Icons.arrow_back),
          //     label: Text('Sair'),
          //     color: Colors.blue
          //   )
          // )
          
          Material(
            borderRadius: BorderRadius.circular(40),
            elevation: 7,
            color: Colors.blue,
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {
                print('Clicou');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child:Text('SAIR', style:TextStyle(color:Colors.white))
              ),
            ),
          )
        ],
      )
    );
  }
}