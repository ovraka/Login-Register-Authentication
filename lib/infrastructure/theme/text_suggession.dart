import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation/routes.dart';
import 'colors.dart';

class TextSuggession extends StatelessWidget {
  TextSuggession(
      {required this.onTap,
      required this.textNoneTap,
      required this.textOnTap,
      super.key});

  VoidCallback onTap;
  String textNoneTap;
  String textOnTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: textNoneTap,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: tagline)),
            children: [
              TextSpan(
                  text: textOnTap,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      onTap();
                    })
            ]));
  }
}
