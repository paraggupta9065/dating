import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_subtitle.dart';
import 'package:tru_dating/widgets/app_bar/appbar_title_image.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';

class MyPreferencesScreen extends StatelessWidget {
  const MyPreferencesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup41),
                        fit: BoxFit.cover)),
                child: Container(
                    height: 440.v,
                    width: 335.h,
                    margin: EdgeInsets.only(top: 8.v, bottom: 5.v),
                    padding: EdgeInsets.only(bottom: 109.v),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: fs.Svg(ImageConstant.imgGroup30628),
                            fit: BoxFit.cover)),
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle17745,
                          height: 27.v,
                          width: 56.h,
                          radius: BorderRadius.circular(13.h),
                          alignment: Alignment.bottomRight),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                              padding:
                                  EdgeInsets.only(right: 10.h, bottom: 3.v),
                              child: Text("lbl_add".tr,
                                  style: CustomTextStyles.bodySmallGray500)))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 15.h, right: 99.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(bottom: 2.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                AppbarSubtitle(
                    text: "lbl_my_preferences".tr,
                    margin: EdgeInsets.only(left: 61.h))
              ])),
          SizedBox(height: 17.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.blue10001)))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
