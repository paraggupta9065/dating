import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/more_info_screen/models/more_info_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MoreInfoScreen.
///
/// This class manages the state of the MoreInfoScreen, including the
/// current moreInfoModelObj
class MoreInfoController extends GetxController {
  TextEditingController editController = TextEditingController();

  TextEditingController editController1 = TextEditingController();

  TextEditingController editController2 = TextEditingController();

  TextEditingController editController3 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController editController4 = TextEditingController();

  TextEditingController rectangleController = TextEditingController();

  Rx<MoreInfoModel> moreInfoModelObj = MoreInfoModel().obs;

  @override
  void onClose() {
    super.onClose();
    editController.dispose();
    editController1.dispose();
    editController2.dispose();
    editController3.dispose();
    cityController.dispose();
    editController4.dispose();
    rectangleController.dispose();
  }
}
