import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class GoogleButton extends StatelessWidget {
  GoogleButton({required this.text, super.key});

  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          side: const BorderSide(width: 2, color: outlineGoogle)),
      child: Stack(children: [
        Ink(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: tagline,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ),
        Ink(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: outlineGoogle)),
          child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/google.svg',
                height: 20,
              )),
        ),
      ]),
    );
  }
}
