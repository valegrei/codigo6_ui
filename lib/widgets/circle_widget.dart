
import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  double radius;
  Color color;

  CircleWidget({
    Key? key,
    required this.radius,
    required this. color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius*2,
      width: radius*2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}