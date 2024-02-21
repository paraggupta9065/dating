import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_outlined_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';

import '../controllers/my_personal_info_controller.dart';
import '../models/aboutme_item_model.dart';
import '../models/widget_item_model.dart';
import '../widgets/aboutme_item_widget.dart';
import '../widgets/widget_item_widget.dart';

class MyPersonalInfoScreen extends StatelessWidget {
  MyPersonalInfoScreen({Key? key}) : super(key: key);
  MyPersonalInfoController controller = Get.put(MyPersonalInfoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildRelationshipStatusStack(),
                  SizedBox(height: 15.v),
                  _buildProfilePromptsStack(),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: _buildMyInterests(
                          interestsLabel: "lbl_more_about_me".tr,
                          onTapEdit: () {
                            onTapEdit();
                          })),
                  SizedBox(height: 8.v),
                  _buildTwentyFiveColumn(),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("lbl_profile_video".tr,
                              style: CustomTextStyles.titleMedium18))),
                  SizedBox(height: 8.v),
                  CustomOutlinedButton(
                      height: 125.v,
                      text: "lbl_add_video".tr,
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      buttonStyle: CustomButtonStyles.outlineBlue,
                      buttonTextStyle: CustomTextStyles.bodySmallGray500,
                      onPressed: () {
                        onTapAddVideo();
                      }),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: _buildMyInterests(
                          interestsLabel: "lbl_my_interests".tr,
                          onTapEdit: () {
                            onTapEdit1();
                          })),
                  SizedBox(height: 10.v),
                  _buildLongDriveRow(),
                  SizedBox(height: 10.v),
                  _buildBeachOutingsRow(),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 37.v,
                          width: 78.h,
                          margin: EdgeInsets.only(left: 15.h),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle17745,
                                    height: 37.v,
                                    width: 78.h,
                                    radius: BorderRadius.circular(18.h),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 8.v),
                                        child: Text("lbl_football".tr,
                                            style: theme.textTheme.bodySmall)))
                              ]))),
                  SizedBox(height: 53.v)
                ])))));
  }

  /// Section Widget
  Widget _buildRelationshipStatusStack() {
    return SizedBox(
        height: 997.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgSplash),
                                    fit: BoxFit.cover)),
                            child: Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPattern,
                                    height: 768.v,
                                    width: 375.h)))),
                    CustomAppBar(
                        height: 44.v,
                        leadingWidth: 39.h,
                        leading: AppbarLeadingImage(
                            imagePath: ImageConstant.imgArrowLeft,
                            margin: EdgeInsets.only(
                                left: 15.h, top: 6.v, bottom: 13.v),
                            onTap: () {
                              onTapArrowLeft();
                            }),
                        centerTitle: true,
                        title: Column(children: [
                          AppbarSubtitle(text: "msg_my_personal_info".tr),
                          SizedBox(height: 2.v),
                          AppbarSubtitleFive(
                              text: "lbl_60_complete".tr,
                              margin: EdgeInsets.only(left: 63.h, right: 62.h))
                        ]),
                        actions: [
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgEye,
                              margin:
                                  EdgeInsets.fromLTRB(15.h, 6.v, 15.h, 13.v),
                              onTap: () {
                                onTapEye();
                              })
                        ]),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h, top: 96.v),
                            child: Text("msg_hold_drag_photos2".tr,
                                style: CustomTextStyles.bodySmallGray50003))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 53.v),
                            child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(color: appTheme.blue10001)))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 15.h, top: 120.v, right: 15.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      height: 345.adaptSize,
                                      width: 345.adaptSize,
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIonutComanici,
                                                height: 345.adaptSize,
                                                width: 345.adaptSize,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    height: 24.v,
                                                    width: 36.h,
                                                    margin: EdgeInsets.only(
                                                        left: 10.h,
                                                        bottom: 10.v),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Opacity(
                                                              opacity: 0.6,
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle17835,
                                                                  height: 24.v,
                                                                  width: 36.h,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          12.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Text(
                                                                  "lbl_dp".tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallOnPrimary_2))
                                                        ])))
                                          ])),
                                  SizedBox(height: 10.v),
                                  SizedBox(
                                      height: 105.v,
                                      child: Obx(() => ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 15.h);
                                          },
                                          itemCount: controller
                                              .myPersonalInfoModelObj
                                              .value
                                              .widgetItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            WidgetItemModel model = controller
                                                .myPersonalInfoModelObj
                                                .value
                                                .widgetItemList
                                                .value[index];
                                            return WidgetItemWidget(model);
                                          })))
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h, top: 70.v),
                            child: Text("lbl_my_photos".tr,
                                style: CustomTextStyles.titleMedium18))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEditGray600,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 69.v, right: 15.h),
                        onTap: () {
                          onTapImgEdit();
                        })
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_my_basics".tr,
                            style: CustomTextStyles.titleMedium18),
                        SizedBox(height: 6.v),
                        Container(
                            padding: EdgeInsets.all(14.h),
                            decoration: AppDecoration.outlineBlue100.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: _buildGender(
                                          genderLabel: "lbl_name".tr,
                                          genderValue: "lbl_honey".tr)),
                                  SizedBox(height: 9.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Divider(
                                          color: appTheme.blue100
                                              .withOpacity(0.53))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: _buildGender(
                                          genderLabel: "lbl_gender".tr,
                                          genderValue: "lbl_male".tr)),
                                  SizedBox(height: 11.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Divider(
                                          color: appTheme.blue100
                                              .withOpacity(0.53))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: _buildGender(
                                          genderLabel: "lbl_profession".tr,
                                          genderValue:
                                              "msg_fashion_designer".tr)),
                                  SizedBox(height: 10.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Divider(
                                          color: appTheme.blue100
                                              .withOpacity(0.53))),
                                  SizedBox(height: 9.v),
                                  SizedBox(
                                      height: 35.v,
                                      width: 315.h,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomTextFormField(
                                                width: 315.h,
                                                controller: controller
                                                    .relationshipStatusController,
                                                hintText:
                                                    "msg_relationship_status"
                                                        .tr,
                                                hintStyle: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer,
                                                alignment: Alignment.center,
                                                prefix: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15.h,
                                                        bottom: 11.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup30970,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 35.v),
                                                contentPadding: EdgeInsets.only(
                                                    top: 5.v,
                                                    right: 30.h,
                                                    bottom: 5.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .underLineBlue1),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 5.v),
                                                    child: Text("lbl_single".tr,
                                                        style: theme.textTheme
                                                            .labelLarge)))
                                          ])),
                                  SizedBox(height: 9.v),
                                  SizedBox(
                                      height: 35.v,
                                      width: 315.h,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomTextFormField(
                                                width: 315.h,
                                                controller:
                                                    controller.heightController,
                                                hintText: "lbl_height".tr,
                                                hintStyle: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer,
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.center,
                                                prefix: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15.h,
                                                        bottom: 11.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup30971,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 35.v),
                                                contentPadding: EdgeInsets.only(
                                                    top: 6.v,
                                                    right: 30.h,
                                                    bottom: 6.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .underLineBlue1),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 4.v),
                                                    child: Text("lbl_5_7".tr,
                                                        style: theme.textTheme
                                                            .labelLarge)))
                                          ])),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: _buildGender(
                                          genderLabel: "lbl_age".tr,
                                          genderValue: "lbl_20_years".tr)),
                                  SizedBox(height: 9.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Divider(
                                          color: appTheme.blue100
                                              .withOpacity(0.53))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 39.h),
                                      child: _buildGender(
                                          genderLabel:
                                              "msg_current_location".tr,
                                          genderValue: "lbl_newyork".tr)),
                                  SizedBox(height: 9.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Divider(
                                          color: appTheme.blue100
                                              .withOpacity(0.53))),
                                  SizedBox(height: 9.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup31028,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.h, top: 4.v),
                                            child: Text("lbl_home_location".tr,
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer)),
                                        Spacer(),
                                        Padding(
                                            padding: EdgeInsets.only(top: 4.v),
                                            child: Text("lbl_california".tr,
                                                style:
                                                    theme.textTheme.labelLarge))
                                      ])
                                ]))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEditGray600,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 15.h, bottom: 372.v),
              onTap: () {
                onTapImgEdit1();
              })
        ]));
  }

  /// Section Widget
  Widget _buildProfilePromptsStack() {
    return SizedBox(
        height: 325.v,
        width: 345.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_profile_prompts".tr,
                        style: CustomTextStyles.titleMedium18),
                    SizedBox(height: 6.v),
                    Obx(() => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10.v);
                        },
                        itemCount: controller.myPersonalInfoModelObj.value
                            .aboutmeItemList.value.length,
                        itemBuilder: (context, index) {
                          AboutmeItemModel model = controller
                              .myPersonalInfoModelObj
                              .value
                              .aboutmeItemList
                              .value[index];
                          return AboutmeItemWidget(model);
                        }))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgEditGray600,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              onTap: () {
                onTapImgEdit2();
              })
        ]));
  }

  /// Section Widget
  Widget _buildTwentyFiveColumn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlue100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: CustomImageView(
            imagePath: ImageConstant.imgRepeatGrid4,
            height: 260.v,
            width: 315.h));
  }

  /// Section Widget
  Widget _buildLongDriveRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 36.h),
            child: Row(children: [
              SizedBox(
                  height: 37.v,
                  width: 92.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle17745,
                        height: 37.v,
                        width: 92.h,
                        radius: BorderRadius.circular(18.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: Text("lbl_long_drive".tr,
                                style: theme.textTheme.bodySmall)))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildMovie(movieLabel: "lbl_music".tr)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildMovie(movieLabel: "lbl_movie".tr)),
              Container(
                  height: 37.v,
                  width: 72.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle17745,
                        height: 37.v,
                        width: 72.h,
                        radius: BorderRadius.circular(18.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text("lbl_cricket".tr,
                                style: theme.textTheme.bodySmall)))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildBeachOutingsRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 49.h),
            child: Row(children: [
              SizedBox(
                  height: 37.v,
                  width: 118.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle2614Blue5001,
                        height: 37.v,
                        width: 118.h,
                        radius: BorderRadius.circular(18.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: Text("lbl_beach_outings".tr,
                                style: theme.textTheme.bodySmall)))
                  ])),
              Container(
                  height: 37.v,
                  width: 82.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle17745,
                        height: 37.v,
                        width: 82.h,
                        radius: BorderRadius.circular(18.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text("lbl_tik_talks".tr,
                                style: theme.textTheme.bodySmall)))
                  ])),
              Container(
                  height: 37.v,
                  width: 91.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle17745,
                        height: 37.v,
                        width: 91.h,
                        radius: BorderRadius.circular(18.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text("lbl_donations".tr,
                                style: theme.textTheme.bodySmall)))
                  ]))
            ])));
  }

  /// Common widget
  Widget _buildGender({
    required String genderLabel,
    required String genderValue,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(genderLabel,
          style: CustomTextStyles.labelLargeOnPrimaryContainer
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Text(genderValue,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Common widget
  Widget _buildMyInterests({
    required String interestsLabel,
    Function? onTapEdit,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(interestsLabel,
                  style: CustomTextStyles.titleMedium18
                      .copyWith(color: appTheme.gray900))),
          CustomImageView(
              imagePath: ImageConstant.imgEditGray600,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 5.v),
              onTap: () {
                onTapEdit!.call();
              })
        ]);
  }

  /// Common widget
  Widget _buildMovie({required String movieLabel}) {
    return SizedBox(
        height: 37.v,
        width: 65.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle17745,
              height: 37.v,
              width: 65.h,
              radius: BorderRadius.circular(18.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Text(movieLabel,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray900))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the viewMyProfileScreen when the action is triggered.
  onTapEye() {
    Get.toNamed(
      AppRoutes.viewMyProfileScreen,
    );
  }

  /// Navigates to the photosScreen when the action is triggered.
  onTapImgEdit() {
    Get.toNamed(
      AppRoutes.photosScreen,
    );
  }

  /// Navigates to the basicsScreen when the action is triggered.
  onTapImgEdit1() {
    Get.toNamed(
      AppRoutes.basicsScreen,
    );
  }

  /// Navigates to the promptsScreen when the action is triggered.
  onTapImgEdit2() {
    Get.toNamed(
      AppRoutes.promptsScreen,
    );
  }

  /// Navigates to the moreInfoScreen when the action is triggered.
  onTapEdit() {
    Get.toNamed(
      AppRoutes.moreInfoScreen,
    );
  }

  /// Navigates to the videoScreen when the action is triggered.
  onTapAddVideo() {
    Get.toNamed(
      AppRoutes.videoScreen,
    );
  }

  /// Navigates to the interestsTabContainerScreen when the action is triggered.
  onTapEdit1() {
    Get.toNamed(
      AppRoutes.interestsTabContainerScreen,
    );
  }
}
