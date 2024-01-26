import 'package:tru_dating/core/app_export.dart';
import 'package:flutter/material.dart';

import '../models/honey_doe_model.dart';

/// A controller class for the HoneyDoePage.
///
/// This class manages the state of the HoneyDoePage, including the
/// current honeyDoeModelObj
class HoneyDoeController extends GetxController {
  HoneyDoeController(this.honeyDoeModelObj);

  TextEditingController myPersonalinfoController = TextEditingController();

  Rx<HoneyDoeModel> honeyDoeModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    myPersonalinfoController.dispose();
  }
}
