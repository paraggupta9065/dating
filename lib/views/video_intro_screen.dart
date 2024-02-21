import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

class VideoIntroScreen extends StatelessWidget {
  const VideoIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.symmetric(vertical: 7.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 15.h),
                          onTap: () {
                            onTapImgArrowLeft();
                          }),
                      SizedBox(height: 14.v),
                      Container(
                          width: 292.h,
                          margin: EdgeInsets.only(left: 40.h, right: 42.h),
                          child: Text("msg_introduce_yourself".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleLargePoppinsBlack900
                                  .copyWith(height: 1.65))),
                      SizedBox(height: 5.v),
                      Opacity(
                          opacity: 0.6,
                          child: SizedBox(
                              width: 255.h,
                              child: Text("msg_video_verify_to".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumBlack900_1
                                      .copyWith(height: 1.64)))),
                      SizedBox(height: 14.v),
                      Divider(color: appTheme.blue10001),
                      SizedBox(height: 29.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgAyoOgunseinde,
                          height: 348.adaptSize,
                          width: 348.adaptSize),
                      SizedBox(height: 43.v),
                      GestureDetector(
                          onTap: () {
                            onTapView();
                          },
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 155.h),
                              padding: EdgeInsets.all(5.h),
                              decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder32),
                              child: Container(
                                  height: 52.adaptSize,
                                  width: 52.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.red500,
                                      borderRadius:
                                          BorderRadius.circular(26.h))))),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the videoRecordScreen when the action is triggered.
  onTapView() {
    Get.toNamed(
      AppRoutes.videoRecordScreen,
    );
  }
}
