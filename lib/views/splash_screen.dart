import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Get.toNamed(AppRoutes.signinScreen);
      },
    );

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              image: DecorationImage(
                  image: AssetImage(ImageConstant.imgSplash),
                  fit: BoxFit.cover)),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8.v),
                Text("lbl_tru".tr, style: CustomTextStyles.cinzelOnPrimary)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
