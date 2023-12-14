import 'controller/upload_photos_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class UploadPhotosScreen extends GetWidget<UploadPhotosController> {
  const UploadPhotosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
                      SizedBox(height: 3.v),
                      Text("lbl_upload_photos".tr,
                          style: CustomTextStyles.titleLargePoppinsBlack900),
                      SizedBox(height: 10.v),
                      Opacity(
                          opacity: 0.6,
                          child: Container(
                              width: 290.h,
                              margin: EdgeInsets.only(left: 43.h, right: 41.h),
                              child: Text("msg_hold_drag_photos".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumBlack900_1
                                      .copyWith(height: 1.64)))),
                      SizedBox(height: 13.v),
                      Divider(color: appTheme.blue10001),
                      SizedBox(height: 19.v),
                      _buildAyoOgunseinde(),
                      SizedBox(height: 15.v),
                      _buildAyoOgunseinde1(),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildNext()));
  }

  /// Section Widget
  Widget _buildAyoOgunseinde() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildFortyFive(
              userImage: ImageConstant.imgAyoOgunseinde105x105,
              userName: "lbl_12".tr),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: _buildFortyFive(
                  userImage: ImageConstant.imgAyoOgunseinde,
                  userName: "lbl_2".tr)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: _buildFortyFive(
                  userImage: ImageConstant.imgAyoOgunseinde1,
                  userName: "lbl_3".tr))
        ]));
  }

  /// Section Widget
  Widget _buildAyoOgunseinde1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildFortyFive(
              userImage: ImageConstant.imgAyoOgunseinde, userName: "lbl_4".tr),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: _buildFortyFive(
                  userImage: ImageConstant.imgAyoOgunseinde105x105,
                  userName: "lbl_5".tr)),
          Container(
              height: 105.adaptSize,
              width: 105.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.all(42.h),
              decoration: AppDecoration.fillBlue
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  alignment: Alignment.center))
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

  /// Common widget
  Widget _buildFortyFive({
    required String userImage,
    required String userName,
  }) {
    return SizedBox(
        height: 105.adaptSize,
        width: 105.adaptSize,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: userImage,
              height: 105.adaptSize,
              width: 105.adaptSize,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 10.h, bottom: 10.v),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v),
                  decoration: AppDecoration.fillBlack
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                  child: Text(userName,
                      style: CustomTextStyles.bodySmallOnPrimary_2.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1)))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the basicInfoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.basicInfoScreen,
    );
  }
}
