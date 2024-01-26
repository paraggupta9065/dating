import 'package:tru_dating/controllers/honey_doe_controller.dart';

import '../models/honeydoelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class HoneydoelistItemWidget extends StatelessWidget {
  HoneydoelistItemWidget(
    this.honeydoelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HoneydoelistItemModel honeydoelistItemModelObj;

  var controller = Get.find<HoneyDoeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlue400.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      width: 96.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Obx(
            () => CustomImageView(
              imagePath: honeydoelistItemModelObj.likesYou!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              honeydoelistItemModelObj.likesYou1!.value,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          SizedBox(height: 1.v),
          Obx(
            () => Text(
              honeydoelistItemModelObj.seven!.value,
              style: CustomTextStyles.titleMediumOnPrimary18,
            ),
          ),
        ],
      ),
    );
  }
}
