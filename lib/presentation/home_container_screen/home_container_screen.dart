import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/home_page/home_page.dart';
import 'package:tru_dating/presentation/honey_doe_page/honey_doe_page.dart';
import 'package:tru_dating/presentation/matches_page/matches_page.dart';
import 'package:tru_dating/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
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
