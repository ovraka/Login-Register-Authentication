import 'package:get/get.dart';
import 'package:login_register_authentication/infrastructure/navigation/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  void checkToken() async {
    var pref = await SharedPreferences.getInstance();
    if (pref.getString('user') != null) {
      Get.offNamed(Routes.DASHBOARD);
    }
    print('Token ada');
  }
}
