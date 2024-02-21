import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

import '../controllers/prompt_questions_controller.dart';
import '../widgets/promptquestionslist_item_widget.dart';
import 'promptquestionslist_item_model.dart';

class PromptQuestionsScreen extends StatelessWidget {
  PromptQuestionsScreen({Key? key}) : super(key: key);
  PromptQuestionsController controller = Get.put(PromptQuestionsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: 900.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: mediaQueryData.size.width,
                        height: mediaQueryData.size.height,
                        padding: EdgeInsets.only(bottom: 50.v),
                        decoration: BoxDecoration(
                            color: appTheme.gray50,
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgGroup41),
                                fit: BoxFit.cover)),
                      )),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 15.h, top: 10.v),
                      onTap: () {
                        onTapImgArrowLeft();
                      }),
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  top: 120.h,
                                  left: 15.h,
                                  right: 15.h,
                                  bottom: 30.v),
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
