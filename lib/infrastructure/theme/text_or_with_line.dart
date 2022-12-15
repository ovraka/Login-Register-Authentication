import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TextOrWithLine extends StatelessWidget {
  const TextOrWithLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 1.0,
            width: 118,
            color: tagline,
          ),
        ),
        Text(
          'or',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: tagline)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 1.0,
            width: 118,
            color: tagline,
          ),
        )
      ],
    );
  }
}
