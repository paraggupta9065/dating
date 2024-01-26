import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';

import '../controllers/some_more_info_controller.dart';

class SomeMoreInfoScreen extends StatelessWidget {
  SomeMoreInfoScreen({Key? key}) : super(key: key);

  final SomeMoreInfoController controller = Get.put(SomeMoreInfoController());

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

  Widget _buildEdit() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildBodyTypeEdit(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_body_type".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  Widget _buildBodyTypeEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.bodyTypeEditController,
        hintText: "lbl_triangle".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v));
  }

  Widget _buildEdit1() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildExerciseEdit(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_exercise".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  Widget _buildExerciseEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.exerciseEditController,
        hintText: "lbl_aerobic".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 14.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 38.v));
  }

  Widget _buildEdit2() {
    return SizedBox(
        height: 38.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildKidsEdit(),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 34.h),
                  child: Text("lbl_no_kids".tr,
                      style: theme.textTheme.titleSmall)))
        ]));
  }

  Widget _buildKidsEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.kidsEditController,
        hintText: "lbl_kids".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
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
  /// _buildBodyTypeEdit()
  Widget _buildLifePartnerEdit() {
    return CustomTextFormField(
        width: 345.h,
        controller: controller.lifePartnerEditController,
        hintText: "msg_relationship_goals".tr,
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
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
        textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
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
        textStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
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

  /// Section Widget
  Widget _buildRectangle() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                  child: Text(
                    "lbl_education".tr,
                  )),
              GestureDetector(
                  onTap: () {
                    onTapRectangle();
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: appTheme.gray500),
                          borderRadius: BorderRadius.circular(15.h)),
                      padding:
                          EdgeInsets.symmetric(vertical: 5.v, horizontal: 15.h),
                      child: Text("lbl_add".tr,
                          style: CustomTextStyles.bodySmallGray500)))
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
