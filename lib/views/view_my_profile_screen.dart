import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:tru_dating/widgets/app_bar/appbar_title_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_floating_text_field.dart';

class ViewMyProfileScreen extends StatelessWidget {
  const ViewMyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.h, right: 15.h, bottom: 5.v),
                        child: Column(children: [
                          _buildIonutComanici(),
                          SizedBox(height: 15.v),
                          Text("lbl_about_me".tr,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 9.v),
                          Container(
                              width: 324.h,
                              margin: EdgeInsets.symmetric(horizontal: 10.h),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmallGray60010
                                      .copyWith(height: 1.60))),
                          SizedBox(height: 7.v),
                          SizedBox(width: 200.h, child: Divider()),
                          SizedBox(height: 10.v),
                          Text("msg_my_3rd_grade_teacher".tr,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 8.v),
                          Container(
                              width: 324.h,
                              margin: EdgeInsets.symmetric(horizontal: 10.h),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmallGray60010
                                      .copyWith(height: 1.60))),
                          SizedBox(height: 7.v),
                          SizedBox(width: 200.h, child: Divider()),
                          SizedBox(height: 10.v),
                          Text("msg_my_real_life_superpower".tr,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 8.v),
                          Container(
                              width: 311.h,
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Text("msg_lorem_ipsum_dolor2".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmallGray60010
                                      .copyWith(height: 1.60))),
                          SizedBox(height: 12.v),
                          _buildBodyType1(),
                          SizedBox(height: 15.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgAyoOgunseinde,
                              height: 345.adaptSize,
                              width: 345.adaptSize),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_my_interests".tr,
                                  style: theme.textTheme.labelLarge)),
                          SizedBox(height: 6.v),
                          _buildLongDrive(),
                          SizedBox(height: 10.v),
                          _buildBeachOutings(),
                          SizedBox(height: 10.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  height: 37.v,
                                  width: 78.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle17745,
                                            height: 37.v,
                                            width: 78.h,
                                            radius: BorderRadius.circular(18.h),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 8.v),
                                                child: Text("lbl_football".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)))
                                      ]))),
                          SizedBox(height: 15.v),
                          _buildCurrentLocation(),
                          SizedBox(height: 15.v),
                          CustomFloatingTextField(
                              controller: controller.locationController,
                              labelText: "lbl_home_location".tr,
                              labelStyle: theme.textTheme.labelLarge!,
                              hintText: "lbl_home_location".tr,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.only(left: 15.h, right: 10.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup31028,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 62.v))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 54.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(top: 6.v, bottom: 14.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: Column(children: [
                      AppbarSubtitle(text: "msg_my_personal_info".tr),
                      SizedBox(height: 2.v),
                      AppbarSubtitleFive(
                          text: "lbl_60_complete".tr,
                          margin: EdgeInsets.only(left: 63.h, right: 62.h))
                    ])),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgEditGray900,
                    margin: EdgeInsets.only(left: 49.h, top: 6.v, bottom: 14.v),
                    onTap: () {
                      onTapEdit();
                    })
              ])),
          SizedBox(height: 7.v),
          SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.blue10001))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildIonutComanici() {
    return SizedBox(
        height: 785.v,
        width: 335.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 560.v,
                  width: 335.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup6),
                          fit: BoxFit.cover)),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIonutComanici,
                        height: 560.v,
                        width: 335.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 13.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgGroup7),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 95.v),
                                  Text("lbl_honey_20".tr,
                                      style: CustomTextStyles
                                          .headlineMediumPoppinsOnPrimary)
                                ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 210.v,
                  width: 320.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 92.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.h, vertical: 30.v),
                            decoration: AppDecoration.fillBlue5001.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder68),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 39.v),
                                  SizedBox(
                                      width: 54.h,
                                      child: Text("msg_fashion_designer2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelLargeMedium
                                              .copyWith(height: 1.33)))
                                ]))),
                    _buildTwentySix(
                        userImage: ImageConstant.imgGroup30970,
                        userName: "lbl_single".tr),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: 100.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.h, vertical: 22.v),
                            decoration: AppDecoration.fillBlue50.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder50),
                            child: Text("lbl_male".tr,
                                style: CustomTextStyles.labelLargeMedium))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            width: 100.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.h, vertical: 28.v),
                            decoration: AppDecoration.fillBlue50.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder50),
                            child: Text("lbl_20_years".tr,
                                style: theme.textTheme.labelSmall))),
                    _buildTwentySix(
                        userImage: ImageConstant.imgGroup30971,
                        userName: "lbl_5_7".tr)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBodyType1() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
        decoration: AppDecoration.outlineBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 89.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: _buildReligion(
                            religion: "lbl_body_type".tr,
                            catholic: "lbl_triangle".tr)),
                    Spacer(),
                    SizedBox(
                        height: 39.v,
                        child: VerticalDivider(
                            width: 1.h, thickness: 1.v, endIndent: 2.h)),
                    Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_exercise".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 4.v),
                              Text("lbl_aerobic".tr,
                                  style: theme.textTheme.labelLarge)
                            ]))
                  ])),
              SizedBox(height: 7.v),
              Divider(),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(right: 85.h),
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_ethnicity".tr,
                              style: CustomTextStyles.bodySmallGray60010),
                          SizedBox(height: 3.v),
                          Text("lbl_native_american".tr,
                              style: theme.textTheme.labelLarge)
                        ]),
                    Spacer(),
                    SizedBox(
                        height: 37.v,
                        child: VerticalDivider(width: 1.h, thickness: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 2.v),
                        child: _buildReligion(
                            religion: "lbl_religion".tr,
                            catholic: "lbl_catholic".tr))
                  ])),
              SizedBox(height: 8.v),
              Divider(),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(right: 23.h),
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_kids".tr,
                                  style: CustomTextStyles.bodySmallGray60010)),
                          SizedBox(height: 5.v),
                          Text("lbl_no".tr, style: theme.textTheme.labelLarge)
                        ]),
                    Spacer(),
                    SizedBox(
                        height: 39.v,
                        child: VerticalDivider(
                            width: 1.h, thickness: 1.v, endIndent: 2.h)),
                    Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_looking_for".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 4.v),
                              Text("msg_something_casual".tr,
                                  style: theme.textTheme.labelLarge)
                            ]))
                  ])),
              SizedBox(height: 7.v),
              Divider(),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(right: 44.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_highest_degree".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 3.v),
                              Text("lbl_bachelor".tr,
                                  style: theme.textTheme.labelLarge)
                            ])),
                    Spacer(),
                    SizedBox(
                        height: 37.v,
                        child: VerticalDivider(width: 1.h, thickness: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_relationship_goals".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 3.v),
                              Text("lbl_life_partner".tr,
                                  style: theme.textTheme.labelLarge)
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildLongDrive() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 21.h),
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
  Widget _buildBeachOutings() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 34.h),
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

  /// Section Widget
  Widget _buildCurrentLocation() {
    return Container(
        width: 345.h,
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_current_location".tr,
                  style: CustomTextStyles.bodySmallGray60010),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child:
                      Text("lbl_newyork".tr, style: theme.textTheme.labelLarge))
            ]));
  }

  /// Common widget
  Widget _buildTwentySix({
    required String userImage,
    required String userName,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 22.v),
        decoration: AppDecoration.fillBlue50
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomImageView(
                  imagePath: userImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center),
              SizedBox(height: 10.v),
              Text(userName,
                  style: CustomTextStyles.labelLargeMedium
                      .copyWith(color: appTheme.gray900))
            ]));
  }

  /// Common widget
  Widget _buildReligion({
    required String religion,
    required String catholic,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(religion,
          style: CustomTextStyles.bodySmallGray60010
              .copyWith(color: appTheme.gray600)),
      SizedBox(height: 3.v),
      Text(catholic,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray900))
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

  /// Navigates to the myPersonalInfoScreen when the action is triggered.
  onTapEdit() {
    Get.toNamed(
      AppRoutes.myPersonalInfoScreen,
    );
  }
}
