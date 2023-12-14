import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/interests_tab_container_screen/models/interests_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InterestsTabContainerScreen.
///
/// This class manages the state of the InterestsTabContainerScreen, including the
/// current interestsTabContainerModelObj
class InterestsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<InterestsTabContainerModel> interestsTabContainerModelObj =
      InterestsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
