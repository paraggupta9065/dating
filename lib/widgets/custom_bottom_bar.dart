import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup30913,
      activeIcon: ImageConstant.imgGroup30913,
      type: BottomBarEnum.Group30913,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup30912BlueGray20001,
      activeIcon: ImageConstant.imgGroup30912BlueGray20001,
      type: BottomBarEnum.Group30912bluegray20001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup169,
      activeIcon: ImageConstant.imgGroup169,
      type: BottomBarEnum.Group169,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup30828,
      activeIcon: ImageConstant.imgGroup30828,
      type: BottomBarEnum.Group30828,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup169,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 28.adaptSize,
                width: 28.adaptSize,
                color: appTheme.blueGray20001,
              ),
              activeIcon: SizedBox(
                height: 48.adaptSize,
                width: 48.adaptSize,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blue5090,
                            borderRadius: BorderRadius.circular(
                              24.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: bottomMenuList[index].activeIcon,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        right: 11.h,
                        bottom: 20.v,
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Group30913,
  Group30912bluegray20001,
  Group169,
  Group30828,
  
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
