import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class SignupScreen extends GetWidget<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 820.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPexelsCottonbro3692748,
                      height: 498.v,
                      width: 375.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 4.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgSplash),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("lbl_tru".tr,
                                style: theme.textTheme.headlineMedium),
                            Spacer(),
                            Text("lbl_welcome".tr,
                                style: CustomTextStyles
                                    .titleLargePoppinsOnPrimary),
                            SizedBox(height: 13.v),
                            Opacity(
                                opacity: 0.7,
                                child: SizedBox(
                                    width: 314.h,
                                    child: Text("msg_hi_i_guess_you".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyMediumOnPrimary
                                            .copyWith(height: 1.57)))),
                            SizedBox(height: 27.v),
                            CustomElevatedButton(
                                text: "msg_sign_up_with_gmail".tr,
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 30.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup31177,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumGray900,
                                onPressed: () {
                                  onTapSignUpWithGmail();
                                }),
                            SizedBox(height: 10.v),
                            CustomElevatedButton(
                                text: "msg_sign_up_with_email".tr,
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 30.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgCall,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumGray900),
                            SizedBox(height: 10.v),
                            CustomElevatedButton(
                                text: "msg_sign_up_with_phone".tr,
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 30.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgCall,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumGray900),
                            SizedBox(height: 31.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_already_have_an2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimary_1),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_sign_in".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary15_1)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 71.v),
                            Container(
                                width: 288.h,
                                margin:
                                    EdgeInsets.only(left: 14.h, right: 13.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_by_continuing_you2".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_1),
                                      TextSpan(
                                          text: "msg_terms_of_service".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary_1
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)),
                                      TextSpan(
                                          text: "lbl_and".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_1),
                                      TextSpan(
                                          text: "lbl_privacy_policy".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary_1
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline))
                                    ]),
                                    textAlign: TextAlign.center)),
                            SizedBox(height: 22.v)
                          ])))
                ]))));
  }

  /// Navigates to the signupOneScreen when the action is triggered.
  onTapSignUpWithGmail() {
    Get.toNamed(
      AppRoutes.signupOneScreen,
    );
  }
}
