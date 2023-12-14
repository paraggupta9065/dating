import '../matches_page/widgets/matchesgrid_item_widget.dart';
import 'controller/matches_controller.dart';
import 'models/matches_model.dart';
import 'models/matchesgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MatchesPage extends StatelessWidget {
  MatchesPage({Key? key}) : super(key: key);

  MatchesController controller = Get.put(MatchesController(MatchesModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: 688.v,
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Stack(alignment: Alignment.center, children: [
                  Opacity(
                      opacity: 0.7,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPatternOnprimary,
                          height: 768.v,
                          width: 375.h,
                          alignment: Alignment.center)),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            height: 688.v,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 768.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 768.v,
                                                    width: double.maxFinite,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                ImageConstant
                                                                    .imgSplash),
                                                            fit: BoxFit
                                                                .cover)))),
                                            SizedBox(
                                                width: double.maxFinite,
                                                child: Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.h,
                                                                top: 66.v,
                                                                right: 15.h),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(left: 5.h),
                                                                      child: RichText(
                                                                          text: TextSpan(children: [
                                                                            TextSpan(
                                                                                text: "lbl_matches2".tr,
                                                                                style: theme.textTheme.titleMedium),
                                                                            TextSpan(
                                                                                text: "lbl_252".tr,
                                                                                style: CustomTextStyles.titleSmallMedium)
                                                                          ]),
                                                                          textAlign: TextAlign.left))),
                                                              SizedBox(
                                                                  height: 19.v),
                                                              _buildMatchesGrid(),
                                                              SizedBox(
                                                                  height: 37.v),
                                                              CustomElevatedButton(
                                                                  text: "msg_upgrade_to_premium"
                                                                      .tr
                                                                      .toUpperCase(),
                                                                  buttonStyle:
                                                                      CustomButtonStyles
                                                                          .none,
                                                                  decoration:
                                                                      CustomButtonStyles
                                                                          .gradientPrimaryToBlueTL251Decoration)
                                                            ])))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 48.v),
                                                    child: SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                            color: appTheme
                                                                .blue10001))))
                                          ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 48.v),
                                      child: SizedBox(
                                          width: 197.h,
                                          child: Divider(
                                              color:
                                                  theme.colorScheme.primary))))
                            ])),
                        _buildAppBar()
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildMatchesGrid() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 88.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 33.h,
                    crossAxisSpacing: 33.h),
                physics: BouncingScrollPhysics(),
                itemCount: controller
                    .matchesModelObj.value.matchesgridItemList.value.length,
                itemBuilder: (context, index) {
                  MatchesgridItemModel model = controller
                      .matchesModelObj.value.matchesgridItemList.value[index];
                  return MatchesgridItemWidget(model);
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 25.v,
        title: AppbarSubtitleThree(
            text: "lbl_likes".tr,
            margin: EdgeInsets.only(left: 76.h),
            onTap: () {
              onTapLikes();
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_matches".tr,
              margin: EdgeInsets.symmetric(horizontal: 55.h))
        ]);
  }

  /// Navigates to the likesTabContainerScreen when the action is triggered.
  onTapLikes() {
    Get.toNamed(
      AppRoutes.likesTabContainerScreen,
    );
  }
}
