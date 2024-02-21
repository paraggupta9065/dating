import '../controllers/choose_plan_controller.dart';
import '../models/chooseplan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class ChooseplanItemWidget extends StatelessWidget {
  ChooseplanItemWidget(
    this.chooseplanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChooseplanItemModel chooseplanItemModelObj;

  var controller = Get.find<ChoosePlanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Obx(
              () => Text(
                chooseplanItemModelObj.johndoeMailCom!.value,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
              bottom: 5.v,
            ),
            child: Obx(
              () => Text(
                chooseplanItemModelObj.johndoeMailCom1!.value,
                style: CustomTextStyles.bodyLargeGray900,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Obx(
              () => Text(
                chooseplanItemModelObj.price!.value,
                style: CustomTextStyles.titleLargePoppinsMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
