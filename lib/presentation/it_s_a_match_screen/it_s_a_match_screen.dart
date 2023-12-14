import 'controller/it_s_a_match_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class ItSAMatchScreen extends GetWidget<ItSAMatchController> {
  const ItSAMatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup41),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowLeft();
                          }),
                      SizedBox(height: 24.v),
                      Text("lbl_congratulations".tr,
                          style: theme.textTheme.headlineLarge),
                      Text("lbl_it_s_a_match".tr,
                          style: CustomTextStyles.headlineSmallGray900),
                      SizedBox(height: 38.v),
                      SizedBox(
                          height: 214.v,
                          width: 240.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMohamadKhosrav,
                                height: 132.adaptSize,
                                width: 132.adaptSize,
                                alignment: Alignment.topLeft),
                            CustomImageView(
                                imagePath: ImageConstant.imgIonutComanici,
                                height: 132.adaptSize,
                                width: 132.adaptSize,
                                alignment: Alignment.topRight),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 38.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 47.h, vertical: 48.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imageNotFound),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 42.v),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_652".tr,
                                                    style: theme.textTheme
                                                        .displaySmall),
                                                TextSpan(
                                                    text: "lbl".tr,
                                                    style: CustomTextStyles
                                                        .headlineSmallOnPrimaryRegular)
                                              ]),
                                              textAlign: TextAlign.left)
                                        ])))
                          ])),
                      SizedBox(height: 17.v),
                      Text("msg_common_interest".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 16.v),
                      _buildLongDrive(),
                      SizedBox(height: 10.v),
                      _buildBeachOutings(),
                      SizedBox(height: 10.v),
                      SizedBox(
                          height: 37.v,
                          width: 78.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle2614,
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
                              ])),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                          text: "lbl_say_hi".tr,
                          margin: EdgeInsets.symmetric(horizontal: 35.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientPrimaryToBlueTL25Decoration),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          text: "msg_find_new_matches".tr,
                          margin: EdgeInsets.symmetric(horizontal: 35.h),
                          buttonStyle: CustomButtonStyles.outlineBlackTL25),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLongDrive() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 37.v,
              width: 92.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle2614,
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
                    imagePath: ImageConstant.imgRectangle2614,
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
        ]));
  }

  /// Section Widget
  Widget _buildBeachOutings() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 37.v,
              width: 118.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle2614Blue50,
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
                    imagePath: ImageConstant.imgRectangle2614,
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
                    imagePath: ImageConstant.imgRectangle2614,
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
        ]));
  }

  /// Common widget
  Widget _buildMovie({required String movieLabel}) {
    return SizedBox(
        height: 37.v,
        width: 65.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2614,
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
  onTapImgArrowLeft() {
    Get.back();
  }
}
