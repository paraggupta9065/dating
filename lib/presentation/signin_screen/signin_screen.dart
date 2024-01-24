import 'package:tru_dating/presentation/home_container_screen/home_container_screen.dart';

import 'controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/core/utils/validation_functions.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';
import 'package:tru_dating/controllers/signin_controller.dart';  // import signin_controller controller 

// ignore_for_file: must_be_immutable
class SigninScreen extends GetWidget<SigninController> { 

  // create the refrence obj of signin_controller 
  SignInController signinController = SignInController();

  SigninScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SizedBox(
                        height: 820.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              fit: BoxFit.cover,
                              imagePath:
                                  ImageConstant.imgPexelsCottonbro3692748,
                              height: 540.v,
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
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtTRU();
                                            },
                                            child: Text("lbl_tru".tr,
                                                style: theme
                                                    .textTheme.headlineMedium)),
                                        Spacer(),
                                        Text("lbl_welcome_back".tr,
                                            style: CustomTextStyles
                                                .titleLargePoppinsOnPrimary),
                                        SizedBox(height: 8.v),
                                        Opacity(
                                            opacity: 0.7,
                                            child: Text(
                                                "msg_i_am_happy_to_see".tr,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodyMediumOnPrimary)),
                                        SizedBox(height: 27.v),
                                        CustomTextFormField(
                                            key: Key('usernameField'),
                                            textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            controller:
                                                controller.userNameController,
                                            hintText: "lbl_username".tr,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isText(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_text"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20.h,
                                                    vertical: 13.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillOnPrimary,
                                            filled: true,
                                            alignment: Alignment.center,
                                            hintStyle: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            fillColor: theme
                                                .colorScheme.onPrimary
                                                .withOpacity(0.44)),
                                        SizedBox(height: 16.v),
                                        CustomTextFormField(
                                            key: Key('password'),
                                            textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            controller:
                                                controller.passwordController,
                                            hintText: "lbl_password".tr,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20.h,
                                                    vertical: 13.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillOnPrimary,
                                            filled: true,
                                            alignment: Alignment.center,
                                            hintStyle: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            fillColor: theme
                                                .colorScheme.onPrimary
                                                .withOpacity(0.44)),
                                        // CustomTextFormField(
                                        //     key: Key('passwordField'),
                                        //     alignment: Alignment.center,
                                        //     hintStyle: TextStyle(
                                        //         color: const Color.fromARGB(
                                        //             255, 255, 255, 255)),
                                        //     textStyle: TextStyle(
                                        //         color: const Color.fromARGB(
                                        //             255, 255, 255, 255)),
                                        //     controller:
                                        //         controller.passwordController,
                                        //     hintText: "lbl_password".tr,
                                        //     textInputAction:
                                        //         TextInputAction.done,
                                        //     textInputType:
                                        //         TextInputType.visiblePassword,
                                        //     validator: (value) {
                                        //       if (value == null ||
                                        //           (!isValidPassword(value,
                                        //               isRequired: true))) {
                                        //         return "err_msg_please_enter_valid_password"
                                        //             .tr;
                                        //       }
                                        //       return null;
                                        //     },
                                        //     obscureText: true,
                                        //     contentPadding:
                                        //         EdgeInsets.symmetric(
                                        //             horizontal: 20.h,
                                        //             vertical: 13.v),
                                        //     borderDecoration:
                                        //         TextFormFieldStyleHelper
                                        //             .fillOnPrimary,
                                        //     filled: true,
                                        //     fillColor: theme
                                        //         .colorScheme.onPrimary
                                        //         .withOpacity(0.44)),
                                        SizedBox(height: 21.v),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text("msg_forget_password".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumOnPrimary_2),
                                        ),
                                        SizedBox(height: 17.v),
                                        CustomElevatedButton(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.v)),
                                            onPressed: () {
                                              print('helo');
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                print('hel');
                                                Get.to(HomeContainerScreen());
                                              }
                                            },
                                            text: "lbl_continue".tr,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyMediumGray900),
                                        SizedBox(height: 21.v),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtDoesnthavean();
                                            },
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_doesn_t_have_an2"
                                                              .tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnPrimary_1),
                                                  TextSpan(text: " "),
                                                  TextSpan(
                                                      text: "lbl_signup_now".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallOnPrimary15_1)
                                                ]),
                                                textAlign: TextAlign.left)),
                                        SizedBox(height: 21.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup3345,
                                            height: 48.adaptSize,
                                            width: 48.adaptSize),
                                        SizedBox(height: 16.v),
                                        Text("msg_login_with_face".tr,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimary_2),
                                        SizedBox(height: 23.v)
                                      ])))
                        ]))))));
  }

  // continue button widget  in this i called signIn() method from signin_controller
  Widget _buildContinueButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          signinController.signIn();
        }
      },
      child: Text(
        "lbl_continue".tr,
        style: CustomTextStyles.bodyMediumGray900,
      ),
    );
  }


  /// Navigates to the splashScreen when the action is triggered.
  onTapTxtTRU() {
    Get.toNamed(
      AppRoutes.splashScreen,
    );
  }

  onTapForgotPassword() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtDoesnthavean() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
