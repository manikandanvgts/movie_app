import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating, required this.color});
  final double rating;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(5, (index) {
          final value = rating / (index + 1);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Icon(
                value >= 1
                    ? Icons.star_rate_rounded
                    : Icons.star_border_rounded,
                size: 24,
                color: color),
          );
        }));
  }
}
