import 'controller/video_record_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_icon_button.dart';
import 'package:tru_dating/widgets/custom_radio_button.dart';

class VideoRecordScreen extends GetWidget<VideoRecordController> {
  const VideoRecordScreen({Key? key}) : super(key: key);

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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 91.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.delete,size: 30.v,)),
                                    SizedBox(
                                      width:30.h,
                                    ),
                                    CustomIconButton(
                                        height: 64.adaptSize,
                                        width: 64.adaptSize,
                                        padding: EdgeInsets.all(20.h),
                                        onTap: () {
                                          onTapBtnClose();
                                        },
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgClose)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgCheckmark,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 40.h,
                                            top: 20.v,
                                            bottom: 20.v),
                                        onTap: () {
                                          onTapImgCheckmark();
                                        })
                                  ]))),
                      SizedBox(height: 51.v),
                      _buildAllowPeoplesTo(),
                      SizedBox(height: 5.v)
                    ])))));
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

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the videoIntroScreen when the action is triggered.
  onTapBtnClose() {
    Get.toNamed(
      AppRoutes.videoIntroScreen,
    );
  }

  /// Navigates to the uploadPhotosScreen when the action is triggered.
  onTapImgCheckmark() {
    Get.toNamed(
      AppRoutes.uploadPhotosScreen,
    );
  }
}
