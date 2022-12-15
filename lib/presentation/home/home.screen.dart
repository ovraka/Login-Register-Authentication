import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:login_register_authentication/infrastructure/theme/link_text.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/company_resource.dart';
import '../../infrastructure/theme/gradient_button.dart';
import '../../infrastructure/theme/outline_button.dart';
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
                    CompanyLogo(),
                    SizedBox(height: 10),
                    CompanyTitle(),
                    SizedBox(height: 30),
                    CompanyTagLine(),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GradientButton(
                      onPressed: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      buttonText: 'Sign Up',
                    ),
                    const SizedBox(height: 15),
                    OutlineButton(
                        onPressed: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        buttonText: 'Log In'),
                    const SizedBox(height: 50)
                  ],
                )),
            LinkText(
                onPressed: () {
                  SystemNavigator.pop();
                },
                textButtonStyleFromSize: 20,
                textStyleSize: 16,
                text: 'Skip for now')
          ],
        ),
      ),
    );
  }
}
