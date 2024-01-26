import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/widgets/app_bar/appbar_leading_image.dart';
import 'package:tru_dating/widgets/app_bar/appbar_title.dart';
import 'package:tru_dating/widgets/app_bar/custom_app_bar.dart';
import 'package:tru_dating/widgets/custom_elevated_button.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgSplash),
                                  fit: BoxFit.cover)),
                          child: Opacity(
                              opacity: 0.7,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgPattern,
                                  height: 768.v,
                                  width: 375.h)))),
                  _buildFortyNine(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 6.h, right: 6.h, bottom: 8.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("lbl_select_plan".tr,
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 8.v),
                            _buildChoosePlan(),
                            SizedBox(height: 15.v),
                            CustomElevatedButton(
                                text: "lbl_continue_to_pay".tr,
                                margin:
                                    EdgeInsets.only(left: 43.h, right: 44.h),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientPrimaryToBlueTL25Decoration),
                            SizedBox(height: 17.v),
                            Text("msg_this_is_a_recurring".tr,
                                style: CustomTextStyles.bodySmallGray50003)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFortyNine() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup7),
                    fit: BoxFit.cover)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  leadingWidth: 39.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeftOnprimary,
                      margin: EdgeInsets.only(left: 15.h, bottom: 2.v),
                      onTap: () {
                        onTapArrowLeft();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_tru_premium".tr)),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 46.h),
                  child: Obx(() => CarouselSlider.builder(
                      options: CarouselOptions(
                          height: 181.v,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.sliderIndex.value = index;
                          }),
                      itemCount: controller.choosePlanModelObj.value
                          .seewhoalreadyItemList.value.length,
                      itemBuilder: (context, index, realIndex) {
                        SeewhoalreadyItemModel model = controller
                            .choosePlanModelObj
                            .value
                            .seewhoalreadyItemList
                            .value[index];
                        return SeewhoalreadyItemWidget(model);
                      }))),
              SizedBox(height: 12.v),
              Obx(() => SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.choosePlanModelObj.value
                          .seewhoalreadyItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 5,
                          activeDotColor:
                              theme.colorScheme.onPrimary.withOpacity(1),
                          dotColor: theme.colorScheme.onPrimary,
                          activeDotScale: 1.3333333333333333,
                          dotHeight: 6.v,
                          dotWidth: 6.h)))),
              SizedBox(height: 13.v)
            ])));
  }

  /// Section Widget
  Widget _buildChoosePlan() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller
                .choosePlanModelObj.value.chooseplanItemList.value.length,
            itemBuilder: (context, index) {
              ChooseplanItemModel model = controller
                  .choosePlanModelObj.value.chooseplanItemList.value[index];
              return ChooseplanItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
