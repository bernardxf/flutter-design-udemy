import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        color: Colors.blue,
      ),
    );
  }  
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var path = Path();
    path.lineTo(0.0, size.height);

    var controlPoint = Offset(size.width, size.height/2);
    var endPoint = Offset(0.0, 0.0);

    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }

}