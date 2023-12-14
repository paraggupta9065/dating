import 'controller/some_more_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';

class SomeMoreInfoScreen extends GetWidget<SomeMoreInfoController> {
  const SomeMoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(bottom: 50.v),
                decoration: BoxDecoration(
                    color: appTheme.gray50,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup41),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 15.h),
                          onTap: () {
                            onTapImgArrowLeft();
                          }),
                      Text("lbl_some_more_info".tr,
                          style: CustomTextStyles.titleLargePoppinsBlack900),
                      SizedBox(height: 17.v),
                      Divider(color: appTheme.blue10001),
                      SizedBox(height: 19.v),
                      _buildEdit(),
                      SizedBox(height: 12.v),
                      _buildEdit1(),
                      SizedBox(height: 12.v),
                      _buildEdit2(),
                      SizedBox(height: 12.v),
                      _buildEdit3(),
                      SizedBox(height: 12.v),
                      _buildCity(),
                      SizedBox(height: 12.v),
                      _buildEdit4(),
                      SizedBox(height: 10.v),
                      _buildRectangle(),
                      SizedBox(height: 12.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildNext()));
  }

  /// Section Widget
  Widget _buildBodyTypeEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.bodyTypeEditController,
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
  Widget _buildEdit() {
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
          _buildBodyTypeEdit()
        ]));
  }

  /// Section Widget
  Widget _buildExerciseEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.exerciseEditController,
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
  Widget _buildEdit1() {
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
          _buildExerciseEdit()
        ]));
  }

  /// Section Widget
  Widget _buildKidsEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.kidsEditController,
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
  Widget _buildEdit2() {
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
          _buildKidsEdit()
        ]));
  }

  /// Section Widget
  Widget _buildLifePartnerEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.lifePartnerEditController,
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
  Widget _buildEdit3() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildLifePartnerEdit(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_life_partner".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildCityEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.cityEditController,
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
  Widget _buildCity() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildCityEdit(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_latin_asian".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildEducationEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.educationEditController,
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
  Widget _buildEdit4() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildEducationEdit(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("msg_christian_hindu".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildEducationRectangle() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.educationRectangleController,
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
  Widget _buildRectangle() {
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
                    _buildEducationRectangle(),
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
  Widget _buildNext() {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 30.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration,
        onPressed: () {
          onTapNext();
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the selectEducationScreen when the action is triggered.
  onTapRectangle() {
    Get.toNamed(
      AppRoutes.selectEducationScreen,
    );
  }

  /// Navigates to the yourInterestsScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.yourInterestsScreen,
    );
  }
}
