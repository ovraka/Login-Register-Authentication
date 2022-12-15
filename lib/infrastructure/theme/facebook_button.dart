import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class FacebookButton extends StatelessWidget {
  FacebookButton({required this.text, super.key});

  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Stack(children: [
        Ink(
          decoration: BoxDecoration(
              color: bgBlueFacebook, borderRadius: BorderRadius.circular(5)),
          child: Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ),
        Ink(
          decoration: BoxDecoration(
              color: logoBlueFacebook, borderRadius: BorderRadius.circular(5)),
          child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/facebook.svg',
                color: Colors.white,
              )),
        ),
      ]),
    );
  }
}
