import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    TextAlign textAlign = TextAlign.center,
    this.fontWeight,
    this.color,
    this.fontSize,
  });
  final String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
