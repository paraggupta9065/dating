import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import 'package:tru_dating/widgets/custom_text_form_field.dart';
import 'package:tru_dating/core/utils/validation_functions.dart';
import '../controllers/select_country_controller.dart';

// ignore: must_be_immutable
class SelectCountryScreen extends StatelessWidget {
  SelectCountryScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final SelectCountryController controller = Get.put(SelectCountryController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  padding: EdgeInsets.only(bottom: 50.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup41),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 15.h),
                            onTap: () {
                              onTapImgArrowLeft();
                            }),
                        SizedBox(height: 17.v),
                        Text("msg_do_you_live_around".tr,
                            style: CustomTextStyles.titleLargePoppinsBlack900),
                        SizedBox(height: 10.v),
                        Opacity(
                            opacity: 0.6,
                            child: SizedBox(
                                width: 261.h,
                                child: Text("msg_add_your_location".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyMediumBlack900_1
                                        .copyWith(height: 1.64)))),
                        SizedBox(height: 24.v),
                        Divider(color: appTheme.blue10001),
                        SizedBox(height: 29.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup31171,
                            height: 32.adaptSize,
                            width: 32.adaptSize),
                        SizedBox(height: 10.v),
                        Text("msg_use_my_current_location".tr,
                            style: CustomTextStyles.bodyMediumPrimary),
                        SizedBox(height: 29.v),
                        Text("lbl_country".tr,
                            style: theme.textTheme.bodyMedium),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.h),
                            child: CustomTextFormField(
                                key: Key('countryName'),
                                textStyle:
                                    CustomTextStyles.bodyMediumBlack900_1,
                                controller: controller.countryController,
                                hintText: "lbl_enter_country".tr,
                                hintStyle: CustomTextStyles.bodyMediumGray50001,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 14.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isText(value, isRequired: true))) {
                                    return "First Fill The Country Name".tr;
                                  }
                                  return null;
                                },
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                                filled: true,
                                fillColor: theme.colorScheme.onPrimary
                                    .withOpacity(1))),
                        SizedBox(height: 20.v),
                        Text("lbl_city".tr, style: theme.textTheme.bodyMedium),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.h),
                            child: CustomTextFormField(
                                key: Key('cityName'),
                                textStyle:
                                    CustomTextStyles.bodyMediumBlack900_1,
                                controller: controller.cityController,
                                hintText: "msg_type_in_your_city".tr,
                                hintStyle: CustomTextStyles.bodyMediumGray50001,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 14.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isText(value, isRequired: true))) {
                                    return "First Fill The City Name".tr;
                                  }
                                  return null;
                                },
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                                filled: true,
                                fillColor: theme.colorScheme.onPrimary
                                    .withOpacity(1))),
                        SizedBox(height: 5.v)
                      ]))),
            ),
            bottomNavigationBar: _buildNextButton()));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 30.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            onTapNextButton();
          }
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the videoIntroScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.videoIntroScreen,
    );
  }
}
