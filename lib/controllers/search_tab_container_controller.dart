import 'package:tru_dating/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTabContainerScreen.
///
/// This class manages the state of the SearchTabContainerScreen, including the
/// current searchTabContainerModelObj
class SearchTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
