import 'package:flutter/material.dart';

class ThirdWidget extends StatefulWidget {
  @override
  _ThirdWidgetState createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,
      appBar: AppBar(
        title: Text('SnackBar & Dialog'),
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                final snackbar =SnackBar(content: Text('Hey!! Snackbar!!'));
                _scaffoldKey.currentState.showSnackBar(snackbar);
              },
              child: Text('Hey SnackBack'),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Hey!! Dialog!!'),
                      content: Text('Content Dialog!!'),
                      actions: <Widget>[
                        FlatButton( onPressed: () {}, child: Text('Ok'),)
                      ],
                    );
                  },
                );
              },
              child: Text('Hey Dialog'),
            ),
          ],
        ),
      )
    );
  }
}