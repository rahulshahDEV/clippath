import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    var h = size.height;
    var w = size.width;

    // for left corner radius
    // path.lineTo(0, h - 20);
    // path.lineTo(w * 0.1, h);

    // // for making U shape
    // path.lineTo(w * 0.6, h);
    // path.lineTo(w * 0.6, h - 20);
    // path.lineTo(w * 0.8, h - 20);
    // path.lineTo(w * 0.8, h);

    // // for right corner radius
    // path.lineTo(w * 0.9, h);
    // path.lineTo(w, h * 0.8);

    // path.lineTo(w, 0);
    //   path.close();

    path.moveTo(0, h - 20);
    path.quadraticBezierTo(0, h, w * 0.1, h);

    path.lineTo(w * 0.6, h);
    path.quadraticBezierTo(w * 0.6, h - 40, w * 0.7, h - 40);

    path.quadraticBezierTo(w * 0.8, h - 40, w * 0.8, h);

    path.lineTo(w * 0.9, h);
    path.quadraticBezierTo(w, h, w, h * 0.8);

    path.lineTo(w, 0);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
