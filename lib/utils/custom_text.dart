
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  CustomText({
    @required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
        color: color ?? Color(0xFF656565),
      ),
    );
  }
}
