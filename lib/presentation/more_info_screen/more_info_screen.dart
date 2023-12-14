import 'controller/more_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';

class MoreInfoScreen extends GetWidget<MoreInfoController> {
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup41),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(),
                            SizedBox(height: 57.v),
                            _buildThirtyFive(),
                            SizedBox(height: 17.v),
                            _buildEditStack1(),
                            SizedBox(height: 12.v),
                            _buildEditStack2(),
                            SizedBox(height: 12.v),
                            _buildEditStack3(),
                            SizedBox(height: 12.v),
                            _buildEditStack4(),
                            SizedBox(height: 12.v),
                            _buildCityStack(),
                            SizedBox(height: 12.v),
                            _buildEditStack5(),
                            SizedBox(height: 10.v),
                            _buildRectangleRow(),
                            SizedBox(height: 12.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 12.v)
                          ]))),
                  _buildPromptsRow()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, bottom: 2.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_edit_profile".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkGray900,
              margin: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 2.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyFive() {
    return SizedBox(
        height: 1.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.blue10001))),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 199.h,
                  child:
                      Divider(color: theme.colorScheme.primary, indent: 94.h)))
        ]));
  }

  /// Section Widget
  Widget _buildEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.editController,
        hintText: "lbl_triangle".tr,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 9.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v),
        contentPadding: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 3.v));
  }

  /// Section Widget
  Widget _buildEditStack1() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text("lbl_body_type".tr,
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer))),
          _buildEdit()
        ]));
  }

  /// Section Widget
  Widget _buildEdit1() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.editController1,
        hintText: "lbl_aerobic".tr,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 9.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v),
        contentPadding: EdgeInsets.only(left: 30.h, top: 2.v, bottom: 2.v));
  }

  /// Section Widget
  Widget _buildEditStack2() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text("lbl_exercise".tr,
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer))),
          _buildEdit1()
        ]));
  }

  /// Section Widget
  Widget _buildEdit2() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.editController2,
        hintText: "lbl_no_kids".tr,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 9.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v),
        contentPadding: EdgeInsets.only(left: 30.h, top: 2.v, bottom: 2.v));
  }

  /// Section Widget
  Widget _buildEditStack3() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text("lbl_kids".tr,
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer))),
          _buildEdit2()
        ]));
  }

  /// Section Widget
  Widget _buildEdit3() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.editController3,
        hintText: "msg_relationship_goals".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v));
  }

  /// Section Widget
  Widget _buildEditStack4() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildEdit3(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_life_partner".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildCity() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.cityController,
        hintText: "lbl_ethnicity".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v));
  }

  /// Section Widget
  Widget _buildCityStack() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildCity(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_latin_asian".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildEdit4() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.editController4,
        hintText: "lbl_religion".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v));
  }

  /// Section Widget
  Widget _buildEditStack5() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildEdit4(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("msg_christian_hindu".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildRectangle() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.rectangleController,
        hintText: "lbl_education".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomLeft,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(13.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgRectangle17745,
                height: 27.v,
                width: 56.h)),
        suffixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildRectangleRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
              child: Text("lbl_education".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer)),
          GestureDetector(
              onTap: () {
                onTapRectangle();
              },
              child: SizedBox(
                  height: 27.v,
                  width: 56.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    _buildRectangle(),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: Text("lbl_add".tr,
                                style: CustomTextStyles.bodySmallGray500)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPromptsRow() {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: EdgeInsets.only(top: 46.v, right: 14.h, bottom: 686.v),
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        onTapTxtPrompts();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Text("lbl_prompts".tr,
                              style:
                                  CustomTextStyles.titleMediumCinzelGray500))),
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("lbl_more_info".tr,
                          style:
                              CustomTextStyles.titleMediumCinzelPrimaryBlack)),
                  GestureDetector(
                      onTap: () {
                        onTapTxtVideo();
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: Text("lbl_video".tr,
                              style: CustomTextStyles
                                  .titleMediumCinzelGray500Bold))),
                  GestureDetector(
                      onTap: () {
                        onTapTxtInterests();
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: Text("lbl_interests".tr,
                              style: CustomTextStyles
                                  .titleMediumCinzelGray500Bold)))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the selectEducationScreen when the action is triggered.
  onTapRectangle() {
    Get.toNamed(
      AppRoutes.selectEducationScreen,
    );
  }

  /// Navigates to the promptsScreen when the action is triggered.
  onTapTxtPrompts() {
    Get.toNamed(
      AppRoutes.promptsScreen,
    );
  }

  /// Navigates to the videoScreen when the action is triggered.
  onTapTxtVideo() {
    Get.toNamed(
      AppRoutes.videoScreen,
    );
  }

  /// Navigates to the interestsTabContainerScreen when the action is triggered.
  onTapTxtInterests() {
    Get.toNamed(
      AppRoutes.interestsTabContainerScreen,
    );
  }
}
