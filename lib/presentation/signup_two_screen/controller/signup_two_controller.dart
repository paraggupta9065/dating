import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/signup_two_screen/models/signup_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupTwoScreen.
///
/// This class manages the state of the SignupTwoScreen, including the
/// current signupTwoModelObj
class SignupTwoController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  Rx<SignupTwoModel> signupTwoModelObj = SignupTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
