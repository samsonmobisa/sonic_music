import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{
  final Widget widget;
  final Color color;
  final double radius;

  const ButtonWidget({super.key, required this.widget, required this.color, required this.radius, });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),

      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: widget,
      ),
    );
  }

}