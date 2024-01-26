import 'package:tru_dating/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the SomeMoreInfoScreen.
///
/// This class manages the state of the SomeMoreInfoScreen, including the
/// current someMoreInfoModelObj
class SomeMoreInfoController extends GetxController {
  TextEditingController bodyTypeEditController = TextEditingController();

  TextEditingController exerciseEditController = TextEditingController();

  TextEditingController kidsEditController = TextEditingController();

  TextEditingController lifePartnerEditController = TextEditingController();

  TextEditingController cityEditController = TextEditingController();

  TextEditingController educationEditController = TextEditingController();

  TextEditingController educationRectangleController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    bodyTypeEditController.dispose();
    exerciseEditController.dispose();
    kidsEditController.dispose();
    lifePartnerEditController.dispose();
    cityEditController.dispose();
    educationEditController.dispose();
    educationRectangleController.dispose();
  }
}
