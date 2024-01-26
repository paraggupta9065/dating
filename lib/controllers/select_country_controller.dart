import 'package:tru_dating/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectCountryScreen.
///
/// This class manages the state of the SelectCountryScreen, including the
/// current selectCountryModelObj
class SelectCountryController extends GetxController {
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
    cityController.dispose();
  }
}
