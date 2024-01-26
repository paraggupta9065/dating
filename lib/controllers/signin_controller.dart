import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';

import '../core/api_handler.dart';
import '../core/constants/constants.dart';

class SignInController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    try {
      dio.Response response = await ApiHandler.post(
        signInUrl,
        {
          'name': userNameController.text,
          'password': passwordController.text,
        },
      );

      if (response.statusCode == 200) {
        print('Sign-in successful');
      } else {
        print('Sign-in failed. ${response.statusCode}: ${response.data}');
      }
    } catch (error) {
      print('Error during sign-in: $error');
    }
  }
}
