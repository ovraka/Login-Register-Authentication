import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkText extends StatelessWidget {
  LinkText(
      {required this.onPressed,
      required this.textButtonStyleFromSize,
      required this.textStyleSize,
      required this.text,
      super.key});

  VoidCallback onPressed;
  double textButtonStyleFromSize;
  double textStyleSize;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: textButtonStyleFromSize),
        ),
        onPressed: () {
          SystemNavigator.pop();
        },
        child: Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: textStyleSize, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
