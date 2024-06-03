import 'package:flutter/material.dart';

import 'clipper_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.color,
    required this.index,
    required this.pageValue,
  });
  final Color color;
  final int index;
  final double pageValue;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipperWidget(progress: getProgress()),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            radius: 150,
            onTap: () {},
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.all(12.0),
              alignment: Alignment.center,
              child: const Text(
                'Watch Now',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
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
