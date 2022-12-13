import 'dart:convert';

import 'package:get/get.dart';

import '../../../domain/core/models/login_response_model.dart';

const apiUrl = 'http://34.126.79.39:81/api/niaga/auth/login';

class LoginService extends GetConnect {
  Future<LoginResponse> loginData(String username, String password) async {
    try {
      var body = jsonEncode({"username": username, "password": password});
      var response = await post(apiUrl, body);
      print(response.body.toString());
      print(response.request?.url.origin);
      print(response.request?.url.path);

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(response.body);
      }
      throw ('Failed get data with status code : ${response.statusCode}');
    } on Exception catch (e) {
      print(e.toString());
      throw ('Error occured while connecting to server');
    }
  }
}
