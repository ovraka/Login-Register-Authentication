import 'dart:convert';

import 'package:get/get.dart';
import 'package:login_register_authentication/infrastructure/navigation/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/core/models/login_response_model.dart';

class DashboardController extends GetxController {
  var username = "".obs;
  var token = "".obs;

  var userData = Data().obs;

  void logout() async {
    var pref = await SharedPreferences.getInstance();
    pref.remove('user');
    Get.offNamed(Routes.HOME);
  }

  void getUserData() async {
    var pref = await SharedPreferences.getInstance();
    var userString = pref.getString('user');
    if (userString != null) {
      Get.snackbar('Success', 'Get user data',
          snackPosition: SnackPosition.BOTTOM);
      userData.value = Data.fromJson(jsonDecode(userString));
    } else {
      Get.snackbar('Failed', 'To get user data',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
