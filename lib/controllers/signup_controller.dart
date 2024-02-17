import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:tru_dating/routes/app_routes.dart';

class SignupController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void signUp({required String name, required String email, required String password}) async {
    try {
      
      final response = await Dio().post('https://tru-dating.vaininnovation.in/api/sign-up', data: {
        'name': name,
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        Get.toNamed(AppRoutes.selectCountryScreen);
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
