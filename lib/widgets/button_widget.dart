import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget widget;
  final Color color;
  final double radius;
  final currentView;

  const ButtonWidget({
    super.key,
    required this.widget,
    required this.color,
    required this.radius,
    this.currentView,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: currentView.toString() == "borderIsTrue"
            ? Border.all(color: Color(0xff7FB9C1)):
        Border.all(color: Colors.transparent),
        borderRadius: currentView.toString() == "bottom"
            ? BorderRadius.only(
                topRight: Radius.circular(radius),
                topLeft: Radius.circular(radius))
            : BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: widget,
      ),
    );
  }
}
