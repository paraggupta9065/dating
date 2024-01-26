import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class LikesTabContainerScreen extends StatelessWidget {
  const LikesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          padding: EdgeInsets.only(bottom: 80.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup6,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 8.v),
                _buildTabview(),
                SizedBox(
                  height: 639.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      LikesPage(),
                      LikesPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 40.v,
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.w900,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_likes".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_matches".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildBottomBar() {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       Get.toNamed(getCurrentRoute(type), id: 1);
  //     },
  //   );
  // }

  // ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Group30913:
  //       return AppRoutes.homePage;
  //     case BottomBarEnum.Group30912bluegray20001:
  //       return AppRoutes.matchesPage;
  //     case BottomBarEnum.Group169:
  //       return AppRoutes.chatScreen;
  //     case BottomBarEnum.Group30828:
  //       return AppRoutes.honeyDoePage;
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homePage:
  //       return HomePage();
  //     case AppRoutes.matchesPage:
  //       return MatchesPage();
  //     case AppRoutes.chatScreen:
  //       return ChatScreen();
  //     case AppRoutes.honeyDoePage:
  //       return HoneyDoePage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
