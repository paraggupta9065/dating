import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_icon_button.dart';

import '../controllers/home_controller.dart';
import '../models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 968.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 6.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConstant.imgGroup6),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 0.h, bottom: 10.v),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                print('object');
                                                onTapSearch();
                                              },
                                              child: Icon(
                                                Icons.search,
                                                size: 25.h,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.h),
                                              child: GestureDetector(
                                                  onTap: () {
                                                    //onTapTxtTRU();
                                                  },
                                                  child: Text("lbl_tru".tr,
                                                      style: theme.textTheme
                                                          .titleLarge)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                print('object');
                                                onTapMenu();
                                              },
                                              child: Icon(
                                                Icons.menu,
                                                size: 25.h,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20.v),
                                      SizedBox(
                                          height: 590.v,
                                          width: 335.h,
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: SizedBox(
                                                        height: 560.v,
                                                        width: 335.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle17743,
                                                                  height: 560.v,
                                                                  width: 335.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              _buildSevenColumn()
                                                            ]))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 77.h),
                                                    child: CustomIconButton(
                                                        height: 60.adaptSize,
                                                        width: 60.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            20.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .outlineBlack,
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCloseGray500))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 77.h),
                                                    child: CustomIconButton(
                                                        height: 60.adaptSize,
                                                        width: 60.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            17.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .outlineBlackTL30,
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        onTap: () {
                                                          onTapBtnIconMetroHeart();
                                                        },
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIconMetroHeart)))
                                              ])),
                                      SizedBox(height: 20.v)
                                    ]))),
                        _buildFashionDesignerStack(),
                        SizedBox(height: 20.v)
                      ])),
                  SizedBox(height: 15.v),
                  Text("lbl_about_me".tr, style: theme.textTheme.labelLarge),
                  SizedBox(height: 9.v),
                  Container(
                      width: 324.h,
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
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
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
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
                      margin: EdgeInsets.symmetric(horizontal: 31.h),
                      child: Text("msg_lorem_ipsum_dolor2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallGray60010
                              .copyWith(height: 1.60))),
                  SizedBox(height: 12.v),
                  _buildBodyTypeColumn(),
                  SizedBox(height: 15.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgNopathCopy8,
                      height: 345.adaptSize,
                      width: 345.adaptSize),
                  SizedBox(height: 17.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("lbl_my_interests".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 6.v),
                  _buildLongDriveRow(),
                  SizedBox(height: 10.v),
                  _buildBeachOutingsRow(),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 37.v,
                          width: 78.h,
                          margin: EdgeInsets.only(left: 15.h),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle17745,
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
                              ]))),
                  SizedBox(height: 15.v),
                  _buildJohnsCurrentLocationColumn(),
                  SizedBox(height: 15.v),
                  _buildJohnsHomeLocationColumn(),
                  SizedBox(height: 24.v)
                ])))));
  }

  /// Section Widget
  Widget _buildSevenColumn() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup7),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 12.v),
                  Text("lbl_john_20".tr,
                      style: CustomTextStyles.headlineMediumPoppinsOnPrimary)
                ])));
  }

  /// Section Widget
  Widget _buildFashionDesignerStack() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 210.v,
            width: 320.h,
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 120.h,
                      width: 120.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 28.v),
                      decoration: AppDecoration.fillBlue5001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder68),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.shopping_bag_sharp,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                                width: 54.h,
                                child: Text("msg_fashion_designer2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.labelLargeMedium
                                        .copyWith(height: 1.33)))
                          ]))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      width: 80.h,
                      height: 80.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 14.v),
                      decoration: AppDecoration.fillBlue50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50),
                      child: Column(
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("lbl_male".tr,
                              style: CustomTextStyles.labelLargeMedium),
                        ],
                      ))),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 80.h,
                      height: 80.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 14.v),
                      decoration: AppDecoration.fillBlue50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50),
                      child: Column(
                        children: [
                          Icon(
                            Icons.monitor_heart,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("lbl_single".tr,
                              style: CustomTextStyles.labelLargeMedium),
                        ],
                      ))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      width: 80.h,
                      height: 80.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 14.v),
                      decoration: AppDecoration.fillBlue50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50),
                      child: Column(
                        children: [
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("lbl_5_7".tr,
                              style: CustomTextStyles.labelLargeMedium),
                        ],
                      ))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 80.h,
                      height: 80.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 14.v),
                      decoration: AppDecoration.fillBlue50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50),
                      child: Column(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text("lbl_20_years".tr,
                              style: CustomTextStyles.labelLargeMedium),
                        ],
                      ))),
            ])));
  }

  /// Section Widget
  Widget _buildBodyTypeColumn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
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
  Widget _buildLongDriveRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 36.h),
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
  Widget _buildBeachOutingsRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 49.h),
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
  Widget _buildJohnsCurrentLocationColumn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_john_s_current_location".tr,
                  style: CustomTextStyles.bodySmallGray60010),
              SizedBox(height: 6.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("lbl_newyork".tr,
                                    style: theme.textTheme.labelLarge)),
                            SizedBox(
                                height: 23.v,
                                width: 104.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                          opacity: 0.7,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle17745Gray50002,
                                              height: 23.v,
                                              width: 104.h,
                                              radius:
                                                  BorderRadius.circular(11.h),
                                              alignment: Alignment.center)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSpacingWrapper,
                                                    height: 13.v,
                                                    width: 10.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 3.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.h),
                                                    child: Text(
                                                        "lbl_2_5_miles_away".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary))
                                              ]))
                                    ]))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildJohnsHomeLocationColumn() {
    return Container(
        width: 345.h,
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("msg_john_s_home_location".tr,
                  style: CustomTextStyles.bodySmallGray60010),
              SizedBox(height: 9.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup31028,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("lbl_california".tr,
                        style: theme.textTheme.labelLarge))
              ])
            ]));
  }

  /// Common widget

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

  /// Navigates to the signinScreen when the action is triggered.
  onTapTxtTRU() {
    Get.toNamed(
      AppRoutes.signinScreen,
    );
  }

  onTapSearch() {
    Get.toNamed(
      AppRoutes.searchTabContainerScreen,
    );
  }

  onTapMenu() {
    Get.toNamed(
      AppRoutes.myPreferencesScreen,
    );
  }

  /// Navigates to the itSAMatchScreen when the action is triggered.
  onTapBtnIconMetroHeart() {
    Get.toNamed(
      AppRoutes.itSAMatchScreen,
    );
  }
}
