import 'controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';

class MessageScreen extends GetWidget<MessageController> {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 40.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup41),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 12.v),
                          Divider(color: appTheme.blue10001),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 244.h,
                                  margin:
                                      EdgeInsets.only(left: 15.h, right: 116.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 13.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: fs.Svg(
                                              ImageConstant.imgBulletOnprimary),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        Container(
                                            width: 202.h,
                                            margin: EdgeInsets.only(left: 8.h),
                                            child: Text(
                                                "msg_hi_cassie_would".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallBluegray600
                                                    .copyWith(height: 1.50)))
                                      ]))),
                          SizedBox(height: 10.v),
                          Container(
                              width: 230.h,
                              margin: EdgeInsets.only(left: 130.h, right: 14.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 12.v),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant
                                          .imgBulletOnprimarycontainer),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    Container(
                                        width: 188.h,
                                        margin: EdgeInsets.only(right: 11.h),
                                        child: Text("msg_hi_ashley_yes_with".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary_2
                                                .copyWith(height: 1.50)))
                                  ])),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 36.v,
                                  width: 70.h,
                                  margin: EdgeInsets.only(left: 15.h),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgBullet,
                                            height: 36.v,
                                            width: 70.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 7.v),
                                                child: Text("lbl_yes".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallBluegray600)))
                                      ]))),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 234.h,
                                  margin:
                                      EdgeInsets.only(left: 25.h, right: 116.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.h, vertical: 12.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder12),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 3.v),
                                        Container(
                                            width: 197.h,
                                            margin: EdgeInsets.only(right: 6.h),
                                            child: Text(
                                                "msg_hi_cassie_can_you".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallBluegray600
                                                    .copyWith(height: 1.50)))
                                      ]))),
                          SizedBox(height: 10.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage,
                              height: 220.adaptSize,
                              width: 220.adaptSize,
                              margin: EdgeInsets.only(right: 14.h)),
                          SizedBox(height: 10.v),
                          Container(
                              width: 247.h,
                              margin: EdgeInsets.only(left: 112.h, right: 14.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 12.v),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant
                                          .imgBulletOnprimarycontainer),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Container(
                                        width: 194.h,
                                        margin: EdgeInsets.only(right: 15.h),
                                        child: Text("msg_by_the_way_did".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary_2
                                                .copyWith(height: 1.50)))
                                  ])),
                          SizedBox(height: 5.v),
                          Padding(
                              padding: EdgeInsets.only(right: 25.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgCloseOnprimarycontainer,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_8_15".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimaryContainer))
                                  ])),
                          SizedBox(height: 42.v),
                          _buildTypeSomething()
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(children: [
              Row(children: [
                SizedBox(
                    height: 36.v,
                    width: 38.h,
                    child: Stack(alignment: Alignment.topRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRepeatGrid1,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 2.h)),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 28.h, top: 4.v, bottom: 22.v),
                              decoration: BoxDecoration(
                                  color: appTheme.lightGreen500,
                                  borderRadius: BorderRadius.circular(5.h),
                                  border: Border.all(
                                      color: appTheme.gray100,
                                      width: 1.h,
                                      strokeAlign: strokeAlignCenter))))
                    ])),
                Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Column(children: [
                      AppbarSubtitleFour(text: "lbl_blair_dota".tr),
                      AppbarSubtitleSix(
                          text: "lbl_online".tr,
                          margin: EdgeInsets.only(right: 48.h))
                    ]))
              ])
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCallGray900,
              margin: EdgeInsets.fromLTRB(63.h, 7.v, 98.h, 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildTypeSomething() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup319), fit: BoxFit.cover)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 37.h, top: 5.v),
              child: Text("msg_send_your_message".tr,
                  style: CustomTextStyles.bodyMediumBluegray20001)),
          CustomImageView(
              imagePath: ImageConstant.imgSend,
              height: 22.v,
              width: 23.h,
              margin: EdgeInsets.symmetric(vertical: 2.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
