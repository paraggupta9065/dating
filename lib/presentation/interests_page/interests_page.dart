import '../interests_page/widgets/fooddrink_item_widget.dart';
import 'controller/interests_controller.dart';
import 'models/fooddrink_item_model.dart';
import 'models/interests_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

class InterestsPage extends StatelessWidget {
  InterestsPage({Key? key})
      : super(
          key: key,
        );

  InterestsController controller =
      Get.put(InterestsController(InterestsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 36.v),
              child: Column(
                children: [
                  SizedBox(height: 55.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_food_drink".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildFoodDrink(),
                        SizedBox(height: 20.v),
                        Divider(
                          color: appTheme.blue10001,
                        ),
                        SizedBox(height: 19.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgRepeatGrid8,
                          height: 2653.v,
                          width: 345.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodDrink() {
    return Obx(
      () => Wrap(
        runSpacing: 10.v,
        spacing: 10.h,
        children: List<Widget>.generate(
          controller.interestsModelObj.value.fooddrinkItemList.value.length,
          (index) {
            FooddrinkItemModel model = controller
                .interestsModelObj.value.fooddrinkItemList.value[index];

            return FooddrinkItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
