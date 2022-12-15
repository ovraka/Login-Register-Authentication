import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_authentication/infrastructure/theme/company_resource.dart';
import 'package:login_register_authentication/infrastructure/theme/facebook_button.dart';
import 'package:login_register_authentication/infrastructure/theme/google_button.dart';
import 'package:login_register_authentication/infrastructure/theme/input_text.dart';
import 'package:login_register_authentication/infrastructure/theme/text_or_with_line.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import '../../infrastructure/theme/gradient_button.dart';
import '../../infrastructure/theme/input_password.dart';
import '../../infrastructure/theme/privacy_policy.dart';
import '../../infrastructure/theme/text_suggession.dart';
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
              const SizedBox(height: 150, child: CompanyLogo()),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InputText(
                          controller: controller.nameController,
                          hintText: 'Full Name',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name),
                      const SizedBox(
                        height: 20,
                      ),
                      InputText(
                          controller: controller.mobileController,
                          hintText: 'Phone Number',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number),
                      const SizedBox(
                        height: 20,
                      ),
                      InputText(
                          controller: controller.emailController,
                          hintText: 'Email',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 20,
                      ),
                      InputText(
                          controller: controller.typeUserController,
                          hintText: 'Type User',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text),
                      const SizedBox(
                        height: 20,
                      ),
                      TextPassword(
                          controller: controller.passwordController,
                          obscureText: controller.isPasswordHide,
                          onPressed: (() {
                            controller.isPasswordHide.toggle();
                          }),
                          isPasswordHide: controller.isPasswordHide,
                          hintText: 'Password'),
                      const SizedBox(
                        height: 20,
                      ),
                      TextPassword(
                          controller: controller.confirmPasswordController,
                          obscureText: controller.isConfirmationPasswordHide,
                          onPressed: (() {
                            controller.isConfirmationPasswordHide.toggle();
                          }),
                          hintText: 'Confirm Password',
                          isPasswordHide:
                              controller.isConfirmationPasswordHide),
                      const SizedBox(
                        height: 20,
                      ),
                      GradientButton(
                        buttonText: 'Sign Up',
                        onPressed: () {
                          controller.registerUser();
                        },
                      ),
                      const SizedBox(height: 40),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextOrWithLine(),
                      const SizedBox(height: 10),
                      FacebookButton(text: 'Sign Up with Facebook'),
                      const SizedBox(height: 20),
                      GoogleButton(text: 'Sign Up with Google'),
                      const SizedBox(height: 30),
                      const PrivacyPolicy(),
                      const SizedBox(
                        height: 50,
                      ),
                      TextSuggession(
                          onTap: () {},
                          textNoneTap: 'Already have an account? ',
                          textOnTap: 'Log in'),
                    ],
                  ))
            ],
          ),
        )),
      )),
    );
  }
}
