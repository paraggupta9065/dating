import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/my_personal_info_screen/models/my_personal_info_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyPersonalInfoScreen.
///
/// This class manages the state of the MyPersonalInfoScreen, including the
/// current myPersonalInfoModelObj
class MyPersonalInfoController extends GetxController {
  TextEditingController relationshipStatusController = TextEditingController();

  TextEditingController heightController = TextEditingController();

  Rx<MyPersonalInfoModel> myPersonalInfoModelObj = MyPersonalInfoModel().obs;

  @override
  void onClose() {
    super.onClose();
    relationshipStatusController.dispose();
    heightController.dispose();
  }
}
