import 'package:flutter/material.dart';

class ClipperWidget extends CustomClipper<Path> {
  ClipperWidget({required this.progress});

  final double progress;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(Rect.fromLTRB(
      size.width - (size.width * progress),
      0,
      size.width,
      size.height,
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
