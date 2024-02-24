import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/views/chat_screen.dart';
import 'package:tru_dating/views/home_page.dart';
import 'package:tru_dating/views/honey_doe_page.dart';
import 'package:tru_dating/views/matches_page.dart';
import 'package:tru_dating/widgets/custom_bottom_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';


class HomeContainerScreen extends StatelessWidget {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group30913:
        return AppRoutes.homePage;
      case BottomBarEnum.Group30912bluegray20001:
        return AppRoutes.matchesPage;
      case BottomBarEnum.Group169:
        return AppRoutes.chatScreen;
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
        return HomePage(user: user,);
      case AppRoutes.matchesPage:
        return MatchesPage();
      case AppRoutes.chatScreen:
        return ChatScreen();
      case AppRoutes.honeyDoePage:
        return HoneyDoePage();
      default:
        return DefaultWidget();
    }
  }
}
