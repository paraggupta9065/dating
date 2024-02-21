import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SelectEducationScreen extends StatelessWidget {
  const SelectEducationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray20002,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                // margin:EdgeInsets.only(
                //     left: 19.h,
                //     right: 19.h,
                //   ) ,
                imagePath: ImageConstant.imgGroup169,
                height: 1000.h,
                width: 375.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 19.h,
                    bottom: 15.v,
                  ),
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildSelectEducationRow(),
                      SizedBox(height: 20.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup30958,
                        height: 290.v,
                        width: 336.h,
                      ),
                      SizedBox(height: 25.v),
                      _buildResetRow(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectEducationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "msg_select_education".tr,
          style: CustomTextStyles.titleLargePoppinsGray900,
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
    );
  }

  /// Section Widget
  Widget _buildResetRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_reset".tr.toUpperCase(),
              margin: EdgeInsets.only(right: 12.h),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "lbl_apply".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 12.h),
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientPrimaryToBlueTL252Decoration,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
