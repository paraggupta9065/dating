import 'controller/search_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/search_page/search_page.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_title_searchview.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';

class SearchTabContainerScreen extends GetWidget<SearchTabContainerController> {
  const SearchTabContainerScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(top: 41.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup41),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 15.v),
                      _buildTabview(),
                      SizedBox(
                          height: 675.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                SearchPage(),
                                SearchPage(),
                                SearchPage(),
                                SearchPage()
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 41.v,
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 7.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 15.h),
            hintText: "lbl_search".tr,
            controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 37.v,
        width: 347.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                  child: SizedBox(
                      height: 37.v,
                      width: 90.h,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle2614Onprimary,
                            height: 37.v,
                            width: 90.h,
                            radius: BorderRadius.circular(18.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_5_0_to_6_2".tr))
                      ]))),
              Tab(
                  child: SizedBox(
                      height: 37.v,
                      width: 73.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle2614Onprimary,
                            height: 37.v,
                            width: 73.h,
                            radius: BorderRadius.circular(18.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: Text("lbl_20_35".tr)))
                      ]))),
              Tab(
                  child: SizedBox(
                      height: 37.v,
                      width: 83.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle2614Onprimary,
                            height: 37.v,
                            width: 83.h,
                            radius: BorderRadius.circular(18.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: Text("lbl_100_miles".tr)))
                      ]))),
              Tab(
                  child: SizedBox(
                      height: 37.v,
                      width: 71.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle17745,
                            height: 37.v,
                            width: 71.h,
                            radius: BorderRadius.circular(18.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: Text("lbl_more".tr)))
                      ])))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
