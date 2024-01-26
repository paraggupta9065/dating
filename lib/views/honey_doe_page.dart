import 'package:flutter/material.dart';
import 'package:tru_dating/controllers/honey_doe_controller.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_switch.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';
import 'package:tru_dating/widgets/honeydoelist_item_widget.dart';

import '../models/honey_doe_model.dart';
import '../models/honeydoelist_item_model.dart';

// ignore_for_file: must_be_immutable
class HoneyDoePage extends StatelessWidget {
  HoneyDoePage({Key? key}) : super(key: key);

  HoneyDoeController controller =
      Get.put(HoneyDoeController(HoneyDoeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup41),
                            fit: BoxFit.cover)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 6.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup7),
                                  fit: BoxFit.cover)),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIonutComanici,
                                height: 96.adaptSize,
                                width: 96.adaptSize),
                            SizedBox(height: 12.v),
                            Text("lbl_honey_20".tr,
                                style: CustomTextStyles.headlineSmallOnPrimary),
                            Text("msg_72_profile_completed".tr,
                                style: CustomTextStyles.bodySmallOnPrimary),
                            SizedBox(height: 13.v),
                            _buildHoneyDoeList(),
                            SizedBox(height: 15.v),
                            CustomElevatedButton(
                                text: "msg_upgrade_to_premium".tr,
                                buttonStyle:
                                    CustomButtonStyles.outlineBlackTL25,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallOrange300_1,
                                onPressed: () {
                                  onTapUpgradeToPremium();
                                }),
                            SizedBox(height: 9.v)
                          ])),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: CustomTextFormField(
                              controller: controller.myPersonalinfoController,
                              hintText: "msg_my_personal_info".tr,
                              hintStyle:
                                  CustomTextStyles.titleSmallOnPrimaryContainer,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15.h, vertical: 13.v),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroup3082824x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 50.v),
                              contentPadding: EdgeInsets.only(
                                  top: 14.v, right: 30.h, bottom: 14.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlackTL16,
                              filled: true,
                              fillColor:
                                  theme.colorScheme.onPrimary.withOpacity(1))),
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                          text: "lbl_my_preferences".tr,
                          margin: EdgeInsets.symmetric(horizontal: 15.h),
                          buttonStyle: CustomButtonStyles.outlineBlackTL16,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimaryContainer,
                          onPressed: () {
                            onTapMyPreferences();
                          }),
                      SizedBox(height: 10.v),
                      Container(
                          width: 345.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 13.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Text("lbl_about_us".tr,
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer)),
                      SizedBox(height: 10.v),
                      Container(
                          width: 345.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 11.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Text("lbl_help_support".tr,
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer)),
                      SizedBox(height: 10.v),
                      _buildPushNotificationsRow(),
                      SizedBox(height: 10.v),
                      Container(
                          width: 345.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 11.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Text("lbl_logout".tr,
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer))
                    ])))));
  }

  /// Section Widget
  Widget _buildHoneyDoeList() {
    return SizedBox(
        height: 96.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: controller
                .honeyDoeModelObj.value.honeydoelistItemList.value.length,
            itemBuilder: (context, index) {
              HoneydoelistItemModel model = controller
                  .honeyDoeModelObj.value.honeydoelistItemList.value[index];
              return HoneydoelistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildPushNotificationsRow() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 39.h, top: 2.v),
              child: Text("msg_push_notifications".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer)),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Navigates to the choosePlanScreen when the action is triggered.
  onTapUpgradeToPremium() {
    Get.toNamed(
      AppRoutes.choosePlanScreen,
    );
  }

  /// Navigates to the myPreferencesScreen when the action is triggered.
  onTapMyPreferences() {
    Get.toNamed(
      AppRoutes.myPreferencesScreen,
    );
  }
}
