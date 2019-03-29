import 'package:flutter/material.dart';

class ButtonTextIcon extends StatelessWidget {

  final Color color;
  final String text;
  final IconData iconData;

  const ButtonTextIcon({Key key, this.color = Colors.grey, this.text = "", this.iconData = Icons.whatshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(3.0, 5.0),
              blurRadius: 7,
            ),
          ]
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 1, child: Icon(iconData, color: Colors.white)),
            Expanded(flex: 3, child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)))
        ],),
      ),
    );
  }
}