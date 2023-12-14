import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/likes_tab_container_screen/models/likes_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LikesTabContainerScreen.
///
/// This class manages the state of the LikesTabContainerScreen, including the
/// current likesTabContainerModelObj
class LikesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LikesTabContainerModel> likesTabContainerModelObj =
      LikesTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
