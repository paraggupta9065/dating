import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/view_my_profile_screen/models/view_my_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ViewMyProfileScreen.
///
/// This class manages the state of the ViewMyProfileScreen, including the
/// current viewMyProfileModelObj
class ViewMyProfileController extends GetxController {
  TextEditingController locationController = TextEditingController();

  Rx<ViewMyProfileModel> viewMyProfileModelObj = ViewMyProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
  }
}
