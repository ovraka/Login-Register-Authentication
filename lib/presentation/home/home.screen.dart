import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_authentication/infrastructure/theme/colors.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    controller.checkToken();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    EvonLogo(),
                    SizedBox(height: 10),
                    EvonTitle(),
                    SizedBox(height: 30),
                    CompanyTagLine(),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    GradientButton(),
                    SizedBox(height: 15),
                    OutlineButton(),
                    SizedBox(height: 50)
                  ],
                )),
            const TextSkipForNow()
          ],
        ),
      ),
    );
  }
}

class CompanyTagLine extends StatelessWidget {
  const CompanyTagLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Discover upcoming events near you',
      maxLines: 2,
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: tagline)),
    );
  }
}

class EvonTitle extends StatelessWidget {
  const EvonTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'EVON',
      style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: evonTitle)),
    );
  }
}

class TextSkipForNow extends StatelessWidget {
  const TextSkipForNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {
          SystemNavigator.pop();
        },
        child: Text(
          'Skip for now',
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(Routes.REGISTER);
      },
      style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [seaBlue, skyBlue]),
            borderRadius: BorderRadius.circular(5)),
        child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          child: Text(
            'Sign Up',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.LOGIN);
          },
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              side: const BorderSide(width: 2, color: seaBlue)),
          child: Text(
            'Log In',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: seaBlue, fontSize: 16, fontWeight: FontWeight.w500)),
          ),
        ));
  }
}

class EvonLogo extends StatelessWidget {
  const EvonLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        Container(
          width: 90.0,
          height: 90.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [seaBlue, skyBlue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            shape: BoxShape.circle,
          ),
        ),
        const Positioned(
            top: 22,
            left: 7,
            child: Icon(
              Icons.location_pin,
              color: Colors.white,
              size: 50,
            )),
        const Positioned(
            top: 22,
            left: 33,
            child: Icon(
              Icons.location_pin,
              color: Colors.white,
              size: 50,
            )),
      ]),
    );
  }
}
