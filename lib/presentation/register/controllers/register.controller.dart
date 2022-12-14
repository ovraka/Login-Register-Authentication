import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_register_authentication/infrastructure/dal/services/register_service.dart';

import '../../../domain/core/models/register_response_model.dart';
import '../../../infrastructure/navigation/routes.dart';

class RegisterController extends GetxController {
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var typeUserController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  RegisterResponse? response;

  var isRegisterSuccessful = false.obs;
  var isPasswordHide = true.obs;
  var isConfirmationPasswordHide = true.obs;

  var service = RegisterService();

  registerUser() async {
    await service
        .registerData(
            nameController.text,
            mobileController.text,
            emailController.text,
            typeUserController.text,
            passwordController.text,
            confirmPasswordController.text)
        .then((value) {
      response = value;
      if (value.isSuccess ?? false) {
        isRegisterSuccessful.value = true;
        Get.snackbar('Success', value.message ?? "",
            snackPosition: SnackPosition.BOTTOM);
        Get.toNamed(Routes.HOME);
      } else {
        isRegisterSuccessful.value = false;
        Get.snackbar('Failed', value.message ?? "",
            snackPosition: SnackPosition.BOTTOM);
      }
    });
  }
}
