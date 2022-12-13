import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MobileFormSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  MobileFormSignUp({super.key});

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
        controller: controller.nameController,
        cursorColor: skyBlue,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Nomor Handphone',
            hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: tagline))),
      ),
    );
  }
}

class NameFormSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  NameFormSignUp({super.key});

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
        controller: controller.nameController,
        cursorColor: skyBlue,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Nama',
            hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: tagline))),
      ),
    );
  }
}

class TextWithLine extends StatelessWidget {
  const TextWithLine({super.key});

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
