import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/home_page/home_page.dart';
import 'package:tru_dating/presentation/honey_doe_page/honey_doe_page.dart';
import 'package:tru_dating/presentation/matches_page/matches_page.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.7,
                child: CustomImageView(
                  imagePath: ImageConstant.imgPatternOnprimary,
                  height: 768.v,
                  width: 375.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 768.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgSplash,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 539.v,
                        width: 369.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRepeatGrid1,
                              height: 539.v,
                              width: 369.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 36.v,
                                  right: 19.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillOnPrimaryContainer
                                    .copyWith(
                                  borderRadius: BorderRadiusStyle.circleBorder9,
                                ),
                                child: Text(
                                  "lbl_2".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          top: 6.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildAppBar(),
                            SizedBox(height: 20.v),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_recent_matches".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 193.v,
                        ),
                        child: Text(
                          "lbl_messages".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRepeatGrid1,
                      height: 84.v,
                      width: 355.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 92.v),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 26.v,
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUser,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_tru".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group30913:
        return AppRoutes.homePage;
      case BottomBarEnum.Group30912bluegray20001:
        return AppRoutes.matchesPage;
      case BottomBarEnum.Group30828:
        return AppRoutes.honeyDoePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.matchesPage:
        return MatchesPage();
      case AppRoutes.honeyDoePage:
        return HoneyDoePage();
      default:
        return DefaultWidget();
    }
  }
}
