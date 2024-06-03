import 'package:flutter/material.dart';
import 'clipper_widget.dart';

class BGImageWidget extends StatelessWidget {
  final int index;
  final String image;
  final Color? color;
  final double pageValue;

  const BGImageWidget({
    super.key,
    this.color,
    required this.index,
    required this.image,
    required this.pageValue,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipperWidget(progress: getProgress()),
      child: Stack(children: [
        Image.asset(
          'assets/images/$image',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                color!.withOpacity(0.9),
                color!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ]),
    );
  }

  double getProgress() {
    if (index == pageValue.floor()) {
      return 1.0 - (pageValue - index);
    } else if (index < pageValue.floor()) {
      return 0.0;
    } else {
      return 1.0;
    }
  }
}
