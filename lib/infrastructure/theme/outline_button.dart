import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation/routes.dart';
import 'colors.dart';

class OutlineButton extends StatelessWidget {
  OutlineButton({required this.onPressed, required this.buttonText, super.key});

  VoidCallback onPressed;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              side: const BorderSide(width: 2, color: seaBlue)),
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: seaBlue, fontSize: 16, fontWeight: FontWeight.w500)),
          ),
        ));
  }
}
