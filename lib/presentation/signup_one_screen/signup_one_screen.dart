import 'controller/signup_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/core/utils/validation_functions.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupOneScreen extends GetWidget<SignupOneController> {
  SignupOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SizedBox(
                        height: 820.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgPexelsCottonbro3692748,
                              height: 498.v,
                              width: 375.h,
                              alignment: Alignment.topCenter),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 29.h, vertical: 4.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgSplash),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("lbl_tru".tr,
                                            style:
                                                theme.textTheme.headlineMedium),
                                        Spacer(flex: 50),
                                        Text("lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleLargePoppinsOnPrimary),
                                        SizedBox(height: 6.v),
                                        Opacity(
                                            opacity: 0.7,
                                            child: Text(
                                                "msg_join_our_community".tr,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodyMediumOnPrimary)),
                                        SizedBox(height: 27.v),
                                        _buildMobileNumberRow(),
                                        SizedBox(height: 30.v),
                                        CustomElevatedButton(
                                            text: "lbl_continue".tr,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyMediumGray900,
                                            onPressed: () {
                                              onTapContinue();
                                            }),
                                        Spacer(flex: 49),
                                        SizedBox(height: 22.v),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_already_have_an2".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumOnPrimary_1),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                  text: "lbl_sign_in".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary15_1)
                                            ]),
                                            textAlign: TextAlign.left)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildMobileNumberRow() {
    return Container(
      
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.44),
        borderRadius: BorderRadius.circular(10)
      ),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgNopath,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Text("lbl_1".tr,
                  style: CustomTextStyles.titleMediumOnPrimary_1)),
          CustomImageView(
              imagePath: ImageConstant.imgIconIonicMdArrowDropdown,
              height: 5.v,
              width: 10.h,
              margin: EdgeInsets.only(left: 10.h, top: 11.v, bottom: 10.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 25.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.indigo20001,
                      indent: 1.h))),
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 1.v),
              child: CustomTextFormField(
                
                  width: 166.h,
                  controller: controller.mobileNumberController,
                  hintText: "msg_enter_mobile_number".tr,
                  hintStyle: CustomTextStyles.bodyLarge_1,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  }))
        ]));
  }

  /// Navigates to the signupTwoScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.signupTwoScreen,
    );
  }
}
