import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class LikesPage extends StatelessWidget {
  LikesPage({Key? key})
      : super(
          key: key,
        );

  LikesController controller = Get.put(LikesController(LikesModel().obs));

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
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup6,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimary.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup6,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_likes_recieved".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                TextSpan(
                                  text: "lbl_72".tr,
                                  style: CustomTextStyles.titleSmallMedium,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildLikesGrid(),
                      SizedBox(height: 30.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_likes_sent".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                TextSpan(
                                  text: "lbl_8".tr,
                                  style: CustomTextStyles.titleSmallMedium,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRepeatGrid1,
                        height: 197.v,
                        width: 331.h,
                      ),
                      SizedBox(height: 45.v),
                      CustomElevatedButton(
                        text: "msg_upgrade_to_premium".tr.toUpperCase(),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToBlueTL251Decoration,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLikesGrid() {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 10.h,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 89.v,
            crossAxisCount: 4,
            mainAxisSpacing: 30.h,
            crossAxisSpacing: 30.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount:
              controller.likesModelObj.value.likesgridItemList.value.length,
          itemBuilder: (context, index) {
            LikesgridItemModel model =
                controller.likesModelObj.value.likesgridItemList.value[index];
            return LikesgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
