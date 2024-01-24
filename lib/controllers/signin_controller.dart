import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();


  Future<void> signIn() async {
    try {
      var apiUrl = 'https://trudating.vaininnovation.in/api/sign-in';

      var response = await Dio().post(
        apiUrl,
        data: {
          'username': userNameController.text,
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
