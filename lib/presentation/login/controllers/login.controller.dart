import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:login_register_authentication/infrastructure/dal/services/login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/core/models/login_response_model.dart';
import '../../../infrastructure/navigation/routes.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isPasswordHide = true.obs;

  LoginResponse? response;

  var isloginSuccessful = false.obs;
  var service = LoginService();

  void userLogin() async {
    var pref = await SharedPreferences.getInstance();
    await service
        .loginData(emailController.text, passwordController.text)
        .then((value) {
      response = value;
      if (value.isSuccess ?? false) {
        Get.snackbar('Success', value.message ?? "",
            snackPosition: SnackPosition.BOTTOM);
        var userData = jsonEncode(value.data?.toJson());
        pref.setString('user', userData);
        Get.toNamed(Routes.DASHBOARD);
      } else {
        Get.snackbar('Failed', value.message ?? "",
            snackPosition: SnackPosition.BOTTOM);
      }
    });
  }
}
