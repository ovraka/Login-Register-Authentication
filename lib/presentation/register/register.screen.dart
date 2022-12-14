import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: size.height),
        child: IntrinsicHeight(
            child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const SizedBox(height: 150, child: EvonLogoSignUp()),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NameFormSignUp(),
                      const SizedBox(
                        height: 20,
                      ),
                      MobileFormSignUp(),
                      const SizedBox(
                        height: 20,
                      ),
                      EmailFormSignUp(),
                      const SizedBox(
                        height: 20,
                      ),
                      TypeUserFormSignUp(),
                      const SizedBox(
                        height: 20,
                      ),
                      PasswordFormSignUp(),
                      const SizedBox(
                        height: 20,
                      ),
                      ConfirmPasswordFormSignUp(),
                      const SizedBox(
                        height: 20,
                      ),
                      GradientButtonSignUp(),
                      const SizedBox(height: 40),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextWithLine(),
                      SizedBox(height: 10),
                      FacebookSignUpButton(),
                      SizedBox(height: 20),
                      GoogleSignUpButton(),
                      SizedBox(height: 30),
                      PrivacyPolicy(),
                      SizedBox(
                        height: 50,
                      ),
                      AlreadyAccount(),
                    ],
                  ))
            ],
          ),
        )),
      )),
    );
  }
}

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "By signing you accept the ",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500, color: tagline)),
            children: [
              TextSpan(
                  text: "Terms of Service ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
              TextSpan(
                text: "and ",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: tagline)),
              ),
              TextSpan(
                  text: "Privacy Policy",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
            ]));
  }
}

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Already have an account? ",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: tagline)),
            children: [
              TextSpan(
                  text: "Log in",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.LOGIN);
                    })
            ]));
  }
}

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({super.key});

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
              'Sign Up with Google',
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

class FacebookSignUpButton extends StatelessWidget {
  const FacebookSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
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
              'Sign Up with Facebook',
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

class GradientButtonSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  GradientButtonSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          controller.registerUser();
        },
        style: ElevatedButton.styleFrom(
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
      ),
    );
  }
}

class ConfirmPasswordFormSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  ConfirmPasswordFormSignUp({super.key});

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
            controller: controller.confirmPasswordController,
            obscureText: controller.isConfirmationPasswordHide.value,
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
                      controller.isConfirmationPasswordHide.toggle();
                    },
                    icon: Icon(
                      controller.isConfirmationPasswordHide.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: tagline,
                    )),
                border: InputBorder.none,
                hintText: 'Confirm Password',
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: tagline))),
          ),
        ));
  }
}

class EvonLogoSignUp extends StatelessWidget {
  const EvonLogoSignUp({super.key});

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

class PasswordFormSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  PasswordFormSignUp({super.key});

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
            controller: controller.passwordController,
            obscureText: controller.isPasswordHide.value,
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
                      controller.isPasswordHide.toggle();
                    },
                    icon: Icon(
                      controller.isPasswordHide.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: tagline,
                    )),
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: tagline))),
          ),
        ));
  }
}

class TypeUserFormSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  TypeUserFormSignUp({super.key});

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
        controller: controller.typeUserController,
        cursorColor: skyBlue,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Type User',
            hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: tagline))),
      ),
    );
  }
}

class EmailFormSignUp extends StatelessWidget {
  var controller = Get.put(RegisterController());
  EmailFormSignUp({super.key});

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
        controller: controller.emailController,
        cursorColor: skyBlue,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Email',
            hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: tagline))),
      ),
    );
  }
}

//commit
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
        controller: controller.mobileController,
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
            hintText: 'Phone Number',
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
            hintText: 'Full Name',
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
