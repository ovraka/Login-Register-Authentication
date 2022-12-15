import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class InputText extends StatelessWidget {
  InputText(
      {required this.controller,
      required this.hintText,
      required this.textInputAction,
      required this.keyboardType,
      super.key});

  TextEditingController controller;
  String hintText;
  TextInputAction textInputAction;
  TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgForm,
      ),
      child: TextField(
        controller: controller,
        cursorColor: skyBlue,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: tagline))),
      ),
    );
  }
}
