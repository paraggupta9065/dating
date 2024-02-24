import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:tru_dating/routes/app_routes.dart';
import 'package:tru_dating/views/home_page.dart';
export 'package:tru_dating/core/constants/constants.dart';

class SignupController extends GetxController {
  

  void signUp({required String gmail, required String password}) async {
    try {
      final response =
          await Dio().post('http://127.0.0.1:8000/api/login/google', data: {
        'gmail': gmail,
        'password': password,
      });

      if (response.statusCode == 200) {
        Get.toNamed(AppRoutes.selectCountryScreen);

        print('Sign-up successful');
        Get.to(() => HomePage());
      } else {
        Get.snackbar(
          "Error",
          "Failed to sign up. Please try again.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (error) {
      print('API Error: $error');
      Get.snackbar(
        "Error",
        "An error occurred. Please try again later.",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
