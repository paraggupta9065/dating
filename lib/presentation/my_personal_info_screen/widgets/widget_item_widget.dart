import '../controller/my_personal_info_controller.dart';
import '../models/widget_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  var controller = Get.find<MyPersonalInfoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.adaptSize,
      width: 105.adaptSize,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: widgetItemModelObj.image!.value,
              height: 105.adaptSize,
              width: 105.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 10.h,
                bottom: 10.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder12,
              ),
              child: Obx(
                () => Text(
                  widgetItemModelObj.widget!.value,
                  style: CustomTextStyles.bodySmallOnPrimary_2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
