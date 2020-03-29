import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  CustomTitle({
    @required this.title,
    this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.lato(
        color: color ?? Color(0xFF2A2A2A),
        fontWeight: fontWeight,
        fontSize: fontSize ?? 30.0,
      ),
    );
  }
}
