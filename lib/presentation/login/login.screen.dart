import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 250,
                    child: EvonLogoLogin(),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      EmailForm(),
                      const SizedBox(
                        height: 20,
                      ),
                      PasswordForm(),
                      const SizedBox(
                        height: 20,
                      ),
                      GradientButtonLogin(),
                      const SizedBox(
                        height: 5,
                      ),
                      const TextForgotPassword(),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      TextOrLine(),
                      SizedBox(height: 10),
                      FacebookLoginButton(),
                      SizedBox(
                        height: 20,
                      ),
                      GoogleLoginButton(),
                      SizedBox(
                        height: 50,
                      ),
                      TextSuggession(),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextSuggession extends StatelessWidget {
  const TextSuggession({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Don't have an account? ",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: tagline)),
            children: [
              TextSpan(
                  text: "Sign Up ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: seaBlue)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.REGISTER);
                    })
            ]));
  }
}

class TextOrLine extends StatelessWidget {
  const TextOrLine({super.key});

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

class TextForgotPassword extends StatelessWidget {
  const TextForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 16),
        ),
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}

class PasswordForm extends StatelessWidget {
  var controller = Get.put(LoginController());
  PasswordForm({super.key});

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

class EmailForm extends StatelessWidget {
  var controller = Get.put(LoginController());
  EmailForm({super.key});

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

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

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
              'Log in with Google',
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

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({super.key});

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
              'Log in with Facebook',
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

class EvonLogoLogin extends StatelessWidget {
  const EvonLogoLogin({super.key});

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

class GradientButtonLogin extends StatelessWidget {
  var controller = Get.put(LoginController());

  GradientButtonLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        onPressed: () async {
          controller.userLogin();
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
              'Log In',
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
