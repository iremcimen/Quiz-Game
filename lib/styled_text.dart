import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.size,
    required this.fontweight,
    required this.color,
    this.backgroundcolor,
    this.textalign,
  });

  final String text;
  final double size;
  final Color color;
  final FontWeight fontweight;
  final Color? backgroundcolor;
  final TextAlign? textalign;

  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        textAlign: textalign,
        style: GoogleFonts.lato(
          fontSize: size,
          fontWeight: fontweight,
          color: color,
        ),
      ),
    );
  }
}
