import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_radio_button.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                            _buildThirtyEight(),
                            SizedBox(height: 19.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgAyoOgunseinde,
                                height: 348.adaptSize,
                                width: 348.adaptSize),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 68.h, right: 33.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Text("lbl_delete".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray500)),
                                          Text("lbl_record_again".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray500)
                                        ]))),
                            Spacer(),
                            SizedBox(height: 24.v),
                            _buildAllowPeoplesTo()
                          ]))),
                  _buildPrompts()
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
  Widget _buildThirtyEight() {
    return SizedBox(
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
                  width: 166.h,
                  child: Divider(
                      color: theme.colorScheme.primary, endIndent: 104.h)))
        ]));
  }

  /// Section Widget
  Widget _buildAllowPeoplesTo() {
    return Obx(() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 46.h),
        child: CustomRadioButton(
            text: "msg_allow_peoples_to".tr,
            value: "msg_allow_peoples_to".tr,
            groupValue: controller.radioGroup.value,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              controller.radioGroup.value = value;
            })));
  }

  /// Section Widget
  Widget _buildPrompts() {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: EdgeInsets.only(top: 46.v),
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                  onTap: () {
                    onTapTxtPrompts();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("lbl_prompts".tr,
                          style: CustomTextStyles.titleMediumCinzelGray500))),
              GestureDetector(
                  onTap: () {
                    onTapTxtMoreInfo();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 14.h, bottom: 2.v),
                      child: Text("lbl_more_info".tr,
                          style: CustomTextStyles.titleMediumCinzelGray500))),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, bottom: 2.v),
                  child: Text("lbl_video".tr,
                      style: CustomTextStyles.titleMediumCinzelPrimaryBlack)),
              GestureDetector(
                  onTap: () {
                    onTapTxtInterests();
                  },
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 8.h, top: 2.v, bottom: 2.v),
                      child: Text("lbl_interests".tr,
                          style:
                              CustomTextStyles.titleMediumCinzelGray500Bold)))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the promptsScreen when the action is triggered.
  onTapTxtPrompts() {
    Get.toNamed(
      AppRoutes.promptsScreen,
    );
  }

  /// Navigates to the moreInfoScreen when the action is triggered.
  onTapTxtMoreInfo() {
    Get.toNamed(
      AppRoutes.moreInfoScreen,
    );
  }

  /// Navigates to the interestsTabContainerScreen when the action is triggered.
  onTapTxtInterests() {
    Get.toNamed(
      AppRoutes.interestsTabContainerScreen,
    );
  }
}
