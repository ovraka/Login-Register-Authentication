import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_register_authentication/infrastructure/theme/input_password.dart';
import 'package:login_register_authentication/infrastructure/theme/input_text.dart';
import 'package:login_register_authentication/infrastructure/theme/link_text.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import '../../infrastructure/theme/company_resource.dart';
import '../../infrastructure/theme/facebook_button.dart';
import '../../infrastructure/theme/google_button.dart';
import '../../infrastructure/theme/gradient_button.dart';
import '../../infrastructure/theme/text_or_with_line.dart';
import '../../infrastructure/theme/text_suggession.dart';
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
                    child: CompanyLogo(),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      InputText(
                          controller: controller.emailController,
                          hintText: 'Email',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress),
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
                      GradientButton(
                        buttonText: 'Log In',
                        onPressed: () {
                          controller.userLogin();
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      LinkText(
                          onPressed: () {},
                          textButtonStyleFromSize: 16,
                          textStyleSize: 14,
                          text: 'Forgot Password?'),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const TextOrWithLine(),
                      const SizedBox(height: 10),
                      FacebookButton(text: 'Log In with Facebook'),
                      const SizedBox(
                        height: 20,
                      ),
                      GoogleButton(text: 'Log In with Google'),
                      const SizedBox(
                        height: 50,
                      ),
                      TextSuggession(
                          onTap: () {
                            Get.toNamed(Routes.REGISTER);
                          },
                          textNoneTap: "Don't have an account? ",
                          textOnTap: 'Sign Up'),
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
