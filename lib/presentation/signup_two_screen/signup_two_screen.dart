import 'controller/signup_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/core/utils/validation_functions.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupTwoScreen extends GetWidget<SignupTwoController> {
  SignupTwoScreen({Key? key}) : super(key: key);

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
                                        Spacer(),
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
                                        _buildFullName(),
                                        SizedBox(height: 16.v),
                                        _buildYourEmail(),
                                        SizedBox(height: 16.v),
                                        _buildPassword(),
                                        SizedBox(height: 16.v),
                                        _buildConfirmPassword(),
                                        SizedBox(height: 30.v),
                                        _buildContinueButton(),
                                        SizedBox(height: 31.v),
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
                                            textAlign: TextAlign.left),
                                        SizedBox(height: 22.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
      hintStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        controller: controller.fullNameController,
        hintText: "lbl_your_full_name".tr,
      
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(left: 30.h, top: 10.v, bottom: 10.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary1,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(0.44));
  }

  /// Section Widget
  Widget _buildYourEmail() {
    return CustomTextFormField(
      hintStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        controller: controller.fullNameController,
        hintText: "lbl_your_email".tr,
      
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(left: 30.h, top: 10.v, bottom: 10.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary1,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(0.44));
  }
  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
       hintStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(0.44));
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return CustomTextFormField(
       hintStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        controller: controller.confirmPasswordController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(0.44));
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        buttonTextStyle: CustomTextStyles.bodyMediumGray900,
        onPressed: () {
          onTapContinueButton();
        });
  }

  /// Navigates to the selectCountryScreen when the action is triggered.
  onTapContinueButton() {
    Get.toNamed(
      AppRoutes.selectCountryScreen,
    );
  }
}
