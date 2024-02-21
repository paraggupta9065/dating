import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/views/home_container_screen.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';
import '../models/coffee_item_model.dart';
import '../widgets/coffee_item_widget.dart';
import 'your_interests_controller.dart';

class YourInterestsScreen extends StatelessWidget {
  YourInterestsScreen({Key? key}) : super(key: key);

  final YourInterestsController controller = Get.put(YourInterestsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 3038.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(bottom: 5.v),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                _buildFortyOne(),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: 90.h,
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      "lbl_food_drink".tr,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              SizedBox(height: 14.v),
                                              _buildCoffee(),
                                              SizedBox(height: 20.v),
                                              Divider(
                                                  color: appTheme.blue10001),
                                              SizedBox(height: 19.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRepeatGrid8,
                                                  height: 2653.v,
                                                  width: 345.h)
                                            ])))
                              ]))))
                ])),
            bottomNavigationBar: _buildNext()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        backColor: appTheme.gray50,
        height: 56.v,
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 2.v, bottom: 29.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(
            text: "lbl_your_interests".tr,
            margin: EdgeInsets.only(top: 23.v, bottom: 2.v)));
  }

  /// Section Widget
  Widget _buildFortyOne() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup41),
                    fit: BoxFit.cover)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Opacity(
                  opacity: 0.63,
                  child: Container(
                      width: 321.h,
                      margin: EdgeInsets.only(left: 28.h, right: 26.h),
                      child: Text("msg_select_a_few_of".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 1.64)))),
              SizedBox(height: 14.v),
              Divider(color: appTheme.blue10001),
              SizedBox(height: 19.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text("msg_you_ve_chosen_2".tr,
                          style: CustomTextStyles.bodySmallGray500)))
            ])));
  }

  /// Section Widget
  Widget _buildCoffee() {
    return Obx(() => Wrap(
        runSpacing: 10.v,
        spacing: 10.h,
        children: List<Widget>.generate(
            controller.yourInterestsModelObj.value.coffeeItemList.value.length,
            (index) {
          CoffeeItemModel model = controller
              .yourInterestsModelObj.value.coffeeItemList.value[index];
          return CoffeeItemWidget(model);
        })));
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
        onPressed: () {
          Get.to(HomeContainerScreen());
        },
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 35.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueDecoration);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
