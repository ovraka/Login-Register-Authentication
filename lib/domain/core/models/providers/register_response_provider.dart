import 'package:get/get.dart';

import '../register_response_model.dart';

class RegisterResponseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return RegisterResponse.fromJson(map);
      if (map is List)
        return map.map((item) => RegisterResponse.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<RegisterResponse?> getRegisterResponse(int id) async {
    final response = await get('registerresponse/$id');
    return response.body;
  }

  Future<Response<RegisterResponse>> postRegisterResponse(
          RegisterResponse registerresponse) async =>
      await post('registerresponse', registerresponse);
  Future<Response> deleteRegisterResponse(int id) async =>
      await delete('registerresponse/$id');
}
