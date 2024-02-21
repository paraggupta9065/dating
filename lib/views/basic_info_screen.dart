import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class BasicInfoScreen extends StatelessWidget {
  const BasicInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                      Text("lbl_basic_info".tr,
                          style: CustomTextStyles.titleLargePoppinsBlack900),
                      SizedBox(height: 17.v),
                      Divider(color: appTheme.blue10001),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildGender(
                              userImage: ImageConstant.imgGroup30970,
                              genderLabel: "lbl_name".tr,
                              genderValue: "lbl_honey".tr)),
                      SizedBox(height: 8.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildGender(
                              userImage: ImageConstant.imgGroup30970,
                              genderLabel: "lbl_gender".tr,
                              genderValue: "lbl_male".tr)),
                      SizedBox(height: 10.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildGender(
                              userImage: ImageConstant.imgGroup30970,
                              genderLabel: "lbl_profession".tr,
                              genderValue: "msg_fashion_designer".tr)),
                      SizedBox(height: 9.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildHeight(
                              userImage: ImageConstant.imgGroup30970,
                              userHeight: "msg_relationship_status".tr,
                              userFiftySeven: "lbl_single".tr)),
                      SizedBox(height: 9.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildHeight(
                              userImage: ImageConstant.imgGroup30971,
                              userHeight: "lbl_height".tr,
                              userFiftySeven: "lbl_5_7".tr)),
                      SizedBox(height: 9.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildGender(
                              userImage: ImageConstant.imgGroup30970,
                              genderLabel: "lbl_age".tr,
                              genderValue: "lbl_20_years".tr)),
                      SizedBox(height: 9.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 54.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text("msg_current_location".tr,
                                        style: CustomTextStyles
                                            .bodySmallOnPrimaryContainer_1)),
                                Text("lbl_newyork".tr,
                                    style: theme.textTheme.titleSmall)
                              ])),
                      SizedBox(height: 8.v),
                      Divider(indent: 15.h, endIndent: 15.h),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildHeight(
                              userImage: ImageConstant.imgGroup31028,
                              userHeight: "lbl_home_location".tr,
                              userFiftySeven: "lbl_california".tr)),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildNextButton()));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 30.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration,
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Common widget
  Widget _buildGender({
    required String userImage,
    required String genderLabel,
    required String genderValue,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
              imagePath: userImage, height: 24.adaptSize, width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 4.v),
              child: Text(genderLabel,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer_1
                      .copyWith(color: theme.colorScheme.onPrimaryContainer))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(genderValue,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.gray900))),
          CustomImageView(
              imagePath: ImageConstant.imgEdit,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 15.h))
        ]);
  }

  /// Common widget
  Widget _buildHeight({
    required String userImage,
    required String userHeight,
    required String userFiftySeven,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: userImage, height: 24.adaptSize, width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 15.h, top: 6.v),
          child: Text(userHeight,
              style: CustomTextStyles.bodySmallOnPrimaryContainer_1
                  .copyWith(color: theme.colorScheme.onPrimaryContainer))),
      Spacer(),
      Text(userFiftySeven,
          style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray900)),
      CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 15.h))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the promptQuestionsScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.promptQuestionsScreen,
    );
  }
}
