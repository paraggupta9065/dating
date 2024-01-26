import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';

import '../controllers/interests_tab_container_controller.dart';
import 'interests_page.dart';

class InterestsTabContainerScreen extends StatelessWidget {
  InterestsTabContainerScreen({Key? key}) : super(key: key);

  InterestsTabContainerController controller =
      Get.put(InterestsTabContainerController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 7.v),
                    child: SizedBox(
                        height: 3042.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          _buildTabview(),
                          Container(
                              margin: EdgeInsets.only(top: 36.v),
                              height: 3006.v,
                              child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [
                                    InterestsPage(),
                                    InterestsPage(),
                                    InterestsPage(),
                                    InterestsPage()
                                  ])),
                          _buildFifty()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 6.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_edit_profile".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkGray900,
              margin: EdgeInsets.fromLTRB(15.h, 6.v, 15.h, 7.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
        height: 36.v,
        width: 367.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            unselectedLabelColor: appTheme.gray500,
            tabs: [
              Tab(child: Text("lbl_prompts".tr)),
              Tab(child: Text("lbl_more_info".tr)),
              Tab(child: Text("lbl_video".tr)),
              Tab(child: Text("lbl_interests".tr))
            ]));
  }

  /// Section Widget
  Widget _buildFifty() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 45.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup41),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 1.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(color: appTheme.blue10001))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                width: 110.h,
                                child: Divider(
                                    color: theme.colorScheme.primary,
                                    endIndent: 13.h)))
                      ])),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text("msg_you_ve_chosen_2".tr,
                          style: CustomTextStyles.bodySmallGray500))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
