import '../prompt_questions_screen/widgets/promptquestionslist_item_widget.dart';
import 'controller/prompt_questions_controller.dart';
import 'models/promptquestionslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class PromptQuestionsScreen extends GetWidget<PromptQuestionsController> {
  const PromptQuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgSplash),
                                  fit: BoxFit.cover)),
                          child: Opacity(
                              opacity: 0.7,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgPattern,
                                  height: 768.v,
                                  width: 375.h)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 15.h, top: 6.v),
                      onTap: () {
                        onTapImgArrowLeft();
                      }),
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 30.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildPromptQuestionsList(),
                                    SizedBox(height: 10.v),
                                    Text("lbl_view_more".tr,
                                        style:
                                            CustomTextStyles.bodySmallPrimary),
                                    SizedBox(height: 14.v),
                                    CustomElevatedButton(
                                        text: "lbl_next".tr,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15.h),
                                        buttonStyle: CustomButtonStyles.none,
                                        decoration: CustomButtonStyles
                                            .gradientPrimaryToBlueDecoration,
                                        onPressed: () {
                                          onTapNext();
                                        })
                                  ])))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 32.v),
                          child: Text("msg_prompt_questions".tr,
                              style:
                                  CustomTextStyles.titleLargePoppinsBlack900))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 78.v),
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(color: appTheme.blue10001))))
                ]))));
  }

  /// Section Widget
  Widget _buildPromptQuestionsList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller.promptQuestionsModelObj.value
                .promptquestionslistItemList.value.length,
            itemBuilder: (context, index) {
              PromptquestionslistItemModel model = controller
                  .promptQuestionsModelObj
                  .value
                  .promptquestionslistItemList
                  .value[index];
              return PromptquestionslistItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the someMoreInfoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.someMoreInfoScreen,
    );
  }
}
