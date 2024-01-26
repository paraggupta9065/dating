import 'package:tru_dating/controllers/choose_plan_controller.dart';

import '../models/seewhoalready_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class SeewhoalreadyItemWidget extends StatelessWidget {
  SeewhoalreadyItemWidget(
    this.seewhoalreadyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeewhoalreadyItemModel seewhoalreadyItemModelObj;

  var controller = Get.find<ChoosePlanController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.all(24.h),
          decoration: AppDecoration.fillBlue400.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup30902,
            height: 48.adaptSize,
            width: 48.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 17.v),
        Text(
          "msg_see_who_already".tr,
          style: CustomTextStyles.titleLargePoppinsOnPrimary,
        ),
        SizedBox(height: 1.v),
        SizedBox(
          width: 282.h,
          child: Text(
            "msg_no_more_limits".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmallOnPrimary_2.copyWith(
              height: 1.50,
            ),
          ),
        ),
      ],
    );
  }
}
