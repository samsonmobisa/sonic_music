import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget{
  final String value;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextDecoration?  decoration;

  const TextWidget(
      {super.key,
        required this.value,
        required this.fontSize,
        required this.fontWeight,
        required this.color,
        required this.textAlign,
        this.decoration});
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      style: GoogleFonts.getFont(
        "Poppins",
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }

}