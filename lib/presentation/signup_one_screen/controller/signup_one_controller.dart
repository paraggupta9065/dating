import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/signup_one_screen/models/signup_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupOneScreen.
///
/// This class manages the state of the SignupOneScreen, including the
/// current signupOneModelObj
class SignupOneController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();

  Rx<SignupOneModel> signupOneModelObj = SignupOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    mobileNumberController.dispose();
  }
}
