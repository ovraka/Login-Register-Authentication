import 'dart:convert';

import 'package:get/get.dart';

import '../../../domain/core/models/register_response_model.dart';

const apiUrl = 'http://34.126.79.39:81/api/niaga/auth/register';

class RegisterService extends GetConnect {
  Future<RegisterResponse> registerData(
      String name,
      String mobile,
      String email,
      String typeUser,
      String password,
      String confirmPassword) async {
    try {
      var body = json.encode({
        "name": name,
        "mobile": mobile,
        "email": email,
        "type_user": typeUser,
        "password": password,
        "confirm_password": confirmPassword
      });
      var response = await post(apiUrl, body);
      if (response.statusCode == 200) {
        return RegisterResponse.fromJson(response.body);
      }
      throw ('Failed get data with status code : ${response.statusCode}');
    } on Exception catch (e) {
      print(e.runtimeType);
      throw ('Error occured while connecting to server');
    }
  }
}
