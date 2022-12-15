import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TextPassword extends StatelessWidget {
  TextPassword(
      {required this.controller,
      required this.obscureText,
      required this.onPressed,
      required this.isPasswordHide,
      required this.hintText,
      super.key});

  TextEditingController controller;
  RxBool obscureText;
  VoidCallback onPressed;
  RxBool isPasswordHide;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: bgForm,
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText.value,
            cursorColor: Colors.black,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    isPasswordHide.toggle();
                  },
                  icon: Icon(
                    isPasswordHide.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: tagline,
                  ),
                ),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: tagline))),
          ),
        ));
  }
}
