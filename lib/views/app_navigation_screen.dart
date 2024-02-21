import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Your Interests".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.yourInterestsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup – One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup – Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Country".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectCountryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video Intro".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoIntroScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video Record".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoRecordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Upload Photos".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadPhotosScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Basic info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.basicInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Prompt Questions".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.promptQuestionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Some more info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.someMoreInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "It\\'s a match".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.itSAMatchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Personal info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myPersonalInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "View my Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewMyProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Photos".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.photosScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Basics".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.basicsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Prompts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.promptsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "More info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.moreInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Interests - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.interestsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Plan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.choosePlanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Likes - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.likesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Preferences".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myPreferencesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Education".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectEducationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
