import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/select_country_screen/models/select_country_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectCountryScreen.
///
/// This class manages the state of the SelectCountryScreen, including the
/// current selectCountryModelObj
class SelectCountryController extends GetxController {
  TextEditingController countryController = TextEditingController();

  Rx<SelectCountryModel> selectCountryModelObj = SelectCountryModel().obs;

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
  }
}
