import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray20002,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              Container(
                height: 697.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup169,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 213.v),
                        padding: EdgeInsets.symmetric(vertical: 20.v),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup215,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: CustomOutlinedButton(
                                text: "lbl_reset".tr.toUpperCase(),
                                margin: EdgeInsets.only(
                                  top: 394.v,
                                  right: 12.h,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomElevatedButton(
                                text: "lbl_apply".tr.toUpperCase(),
                                margin: EdgeInsets.only(
                                  left: 12.h,
                                  top: 394.v,
                                ),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientPrimaryToBlueTL252Decoration,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumOnPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          top: 19.v,
                          right: 15.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildFilters(),
                            SizedBox(height: 18.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_age".tr,
                              milesCounter: "lbl_20_352".tr,
                            ),
                            SizedBox(height: 13.v),
                            Divider(),
                            SizedBox(height: 13.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_max_distance".tr,
                              milesCounter: "lbl_100_miles".tr,
                            ),
                            SizedBox(height: 14.v),
                            Divider(),
                            SizedBox(height: 15.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_in_location".tr,
                              milesCounter: "lbl_newyork_usa".tr,
                            ),
                            SizedBox(height: 11.v),
                            Divider(),
                            SizedBox(height: 19.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "msg_advanced_filters".tr,
                                style: CustomTextStyles.bodyMediumPrimary,
                              ),
                            ),
                            SizedBox(height: 19.v),
                            _buildMaxDistance(
                              maxDistance: "msg_i_am_looking_for".tr,
                              milesCounter: "lbl_male".tr,
                            ),
                            SizedBox(height: 12.v),
                            Divider(),
                            SizedBox(height: 13.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_height".tr,
                              milesCounter: "lbl_5_00_to_6_5".tr,
                            ),
                            SizedBox(height: 12.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_ethnicity".tr,
                              milesCounter: "lbl_latin_asian".tr,
                            ),
                            SizedBox(height: 13.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_religion".tr,
                              milesCounter: "msg_christian_hindu".tr,
                            ),
                            SizedBox(height: 12.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_education".tr,
                              milesCounter: "lbl3".tr,
                            ),
                            SizedBox(height: 13.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            _buildMaxDistance(
                              maxDistance: "msg_relationship_goals".tr,
                              milesCounter: "lbl_life_partner".tr,
                            ),
                            SizedBox(height: 13.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            _buildMaxDistance(
                              maxDistance: "lbl_kids".tr,
                              milesCounter: "lbl_no_kids".tr,
                            ),
                            SizedBox(height: 13.v),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilters() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_filters".tr,
            style: CustomTextStyles.titleLargePoppins,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueGray300,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMaxDistance({
    required String maxDistance,
    required String milesCounter,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            maxDistance,
            style: CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Text(
          milesCounter,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
