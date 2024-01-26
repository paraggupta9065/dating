import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_icon_button.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
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
                            _buildTen(),
                            SizedBox(height: 19.v),
                            _buildAyoOgunseinde(),
                            SizedBox(height: 15.v),
                            _buildAyoOgunseinde1(),
                            SizedBox(height: 32.v),
                            Text("msg_hold_drag_photos".tr,
                                style: CustomTextStyles.bodySmallGray50003),
                            SizedBox(height: 32.v)
                          ]))),
                  _buildPhotos()
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
  Widget _buildTen() {
    return SizedBox(
        height: 1.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.blue10001))),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 83.h,
                  child:
                      Divider(color: theme.colorScheme.primary, indent: 15.h)))
        ]));
  }

  /// Section Widget
  Widget _buildAyoOgunseinde() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildTwelve(
              userImage: ImageConstant.imgAyoOgunseinde105x105,
              userName: "lbl_12".tr),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: _buildTwelve(
                  userImage: ImageConstant.imgAyoOgunseinde,
                  userName: "lbl_2".tr)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: _buildTwelve(
                  userImage: ImageConstant.imgAyoOgunseinde1,
                  userName: "lbl_3".tr))
        ]));
  }

  /// Section Widget
  Widget _buildAyoOgunseinde1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildTwelve(
              userImage: ImageConstant.imgAyoOgunseinde, userName: "lbl_4".tr),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: _buildTwelve(
                  userImage: ImageConstant.imgAyoOgunseinde105x105,
                  userName: "lbl_5".tr)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: CustomIconButton(
                  height: 105.adaptSize,
                  width: 105.adaptSize,
                  padding: EdgeInsets.all(42.h),
                  decoration: IconButtonStyleHelper.fillBlue,
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildPhotos() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 768.v,
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 15.h, top: 46.v, bottom: 686.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 24.h);
                },
                itemCount:
                    controller.photosModelObj.value.photosItemList.value.length,
                itemBuilder: (context, index) {
                  PhotosItemModel model = controller
                      .photosModelObj.value.photosItemList.value[index];
                  return PhotosItemWidget(model);
                }))));
  }

  /// Common widget
  Widget _buildTwelve({
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
  onTapArrowLeft() {
    Get.back();
  }
}
