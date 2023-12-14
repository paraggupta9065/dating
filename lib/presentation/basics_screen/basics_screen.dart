import '../basics_screen/widgets/basics_item_widget.dart';
import 'controller/basics_controller.dart';
import 'models/basics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';

class BasicsScreen extends GetWidget<BasicsController> {
  const BasicsScreen({Key? key}) : super(key: key);

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
                            _buildFiftyNine(),
                            SizedBox(height: 19.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 54.h, right: 15.h),
                                child: _buildGender(
                                    gender: "lbl_name".tr,
                                    gender1: "lbl_honey".tr)),
                            SizedBox(height: 8.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 9.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 54.h, right: 15.h),
                                child: _buildGender(
                                    gender: "lbl_gender".tr,
                                    gender1: "lbl_male".tr)),
                            SizedBox(height: 10.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 9.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 54.h, right: 15.h),
                                child: _buildGender(
                                    gender: "lbl_profession".tr,
                                    gender1: "msg_fashion_designer".tr)),
                            SizedBox(height: 9.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.h),
                                child: _buildHeight(
                                    image: ImageConstant.imgGroup30970,
                                    height: "msg_relationship_status".tr,
                                    userHeight: "lbl_single".tr)),
                            SizedBox(height: 9.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.h),
                                child: _buildHeight(
                                    image: ImageConstant.imgGroup30971,
                                    height: "lbl_height".tr,
                                    userHeight: "lbl_5_7".tr)),
                            SizedBox(height: 9.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 9.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 54.h, right: 15.h),
                                child: _buildGender(
                                    gender: "lbl_age".tr,
                                    gender1: "lbl_20_years".tr)),
                            SizedBox(height: 9.v),
                            Divider(indent: 15.h, endIndent: 15.h),
                            SizedBox(height: 13.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 54.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    image: ImageConstant.imgGroup31028,
                                    height: "lbl_home_location".tr,
                                    userHeight: "lbl_california".tr)),
                            SizedBox(height: 9.v)
                          ]))),
                  _buildBasics()
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
  Widget _buildFiftyNine() {
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
                  width: 173.h,
                  child:
                      Divider(color: theme.colorScheme.primary, indent: 105.h)))
        ]));
  }

  /// Section Widget
  Widget _buildBasics() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 768.v,
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 15.h, top: 46.v, bottom: 686.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 19.h);
                },
                itemCount:
                    controller.basicsModelObj.value.basicsItemList.value.length,
                itemBuilder: (context, index) {
                  BasicsItemModel model = controller
                      .basicsModelObj.value.basicsItemList.value[index];
                  return BasicsItemWidget(model, onTapTxtPhotos: () {
                    onTapTxtPhotos();
                  });
                }))));
  }

  /// Common widget
  Widget _buildGender({
    required String gender,
    required String gender1,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text(gender,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer_1
                      .copyWith(color: theme.colorScheme.onPrimaryContainer))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(gender1,
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
    required String image,
    required String height,
    required String userHeight,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: image, height: 24.adaptSize, width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 15.h, top: 6.v),
          child: Text(height,
              style: CustomTextStyles.bodySmallOnPrimaryContainer_1
                  .copyWith(color: theme.colorScheme.onPrimaryContainer))),
      Spacer(),
      Text(userHeight,
          style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray900)),
      CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 15.h))
    ]);
  }

  /// Navigates to the photosScreen when the action is triggered.
  onTapTxtPhotos() {
    Get.toNamed(AppRoutes.photosScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
