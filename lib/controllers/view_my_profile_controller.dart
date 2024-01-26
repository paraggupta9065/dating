import 'package:tru_dating/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the ViewMyProfileScreen.
///
/// This class manages the state of the ViewMyProfileScreen, including the
/// current viewMyProfileModelObj
class ViewMyProfileController extends GetxController {
  TextEditingController locationController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
  }
}
