import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import 'controllers/dashboard.controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getUserData();
    return Scaffold(
      body: Obx(() => Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Username : ",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          children: [
                            TextSpan(
                                text: controller.userData.value.name,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: seaBlue)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(Routes.LOGIN);
                                  })
                          ])),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Token : ",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          children: [
                            TextSpan(
                                text: controller.userData.value.token,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: seaBlue)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(Routes.LOGIN);
                                  })
                          ])),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ElevatedButton(
                      onPressed: () async {
                        controller.logout();
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [seaBlue, skyBlue]),
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'Log Out',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          )),
    );
  }
}
