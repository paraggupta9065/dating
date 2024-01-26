import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';

class PromptsScreen extends StatelessWidget {
  const PromptsScreen({Key? key}) : super(key: key);

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
                      child: SizedBox(
                          height: 768.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgSplash),
                                            fit: BoxFit.cover)),
                                    child: Opacity(
                                        opacity: 0.7,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgPattern,
                                            height: 768.v,
                                            width: 375.h)))),
                            _buildFortyStack(),
                            SizedBox(
                                width: double.maxFinite,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h,
                                            right: 15.h,
                                            bottom: 10.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildAboutMeList(),
                                              SizedBox(height: 15.v),
                                              Text("lbl_view_more".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallPrimary)
                                            ])))),
                            _buildAppBar()
                          ]))),
                  _buildPhotos()
                ]))));
  }

  /// Section Widget
  Widget _buildFortyStack() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 1.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 90.v),
            child: Stack(alignment: Alignment.centerRight, children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: appTheme.blue10001))),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      width: 187.h,
                      child: Divider(
                          color: theme.colorScheme.primary, endIndent: 101.h)))
            ])));
  }

  /// Section Widget
  Widget _buildAboutMeList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller
                .promptsModelObj.value.aboutmelistItemList.value.length,
            itemBuilder: (context, index) {
              AboutmelistItemModel model = controller
                  .promptsModelObj.value.aboutmelistItemList.value[index];
              return AboutmelistItemWidget(model);
            })));
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
  Widget _buildPhotos() {
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
                itemCount: controller
                    .promptsModelObj.value.photos1ItemList.value.length,
                itemBuilder: (context, index) {
                  Photos1ItemModel model = controller
                      .promptsModelObj.value.photos1ItemList.value[index];
                  return Photos1ItemWidget(model, onTapTxtPhotos: () {
                    onTapTxtPhotos();
                  });
                }))));
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
