import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tru_dating/routes/app_routes.dart';
import 'package:tru_dating/views/home_page.dart';

import '../core/api_handler.dart';
import '../core/constants/constants.dart';

class SignupController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // TextEditingController confirmPasswordController = TextEditingController();

  void signUp() async {
    try {
      Response response = await ApiHandler.post(signUpUrl, {
        'name': fullNameController.text,
        'email': emailController.text,
        'password': passwordController.text,
      });

      if (response.statusCode == 200) {
        Get.toNamed(AppRoutes.selectCountryScreen);
        Get.to(() => HomePage());
      } else if (response.data['message'] != null) {
        Get.snackbar(
          "Error",
          response.data['message'],
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          "Error",
          "Failed to sign up. Please try again.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (error) {
      Get.snackbar(
        "Error",
        "An error occurred. Please try again later.",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
