import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/views/home_page.dart';

class SignupController extends GetxController {
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();


  Future<void> signUp() async {
    try {
      var apiUrl = 'https://tru-dating.vaininnovation.in/api/sign-up';

      var response = await Dio().post(
        apiUrl,
        data: {
          'full_name': fullNameController.text,
          'email': emailController.text,
          'password': passwordController.text,
          'confirm_password': confirmPasswordController.text,
        },
      );

  
      if (response.statusCode == 200) {
        print('Sign-up successful');
        Get.to(() => HomePage());
      } else {
        print('Sign-up failed. ${response.statusCode}: ${response.data}');
      }
    } catch (error) {
      print('Error during sign-up: $error');
    }
  }
}
