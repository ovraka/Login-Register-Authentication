import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "By signing you accept the ",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500, color: tagline)),
            children: [
              TextSpan(
                  text: "Terms of Service ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
              TextSpan(
                text: "and ",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: tagline)),
              ),
              TextSpan(
                  text: "Privacy Policy",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
            ]));
  }
}
