import '../controllers/my_personal_info_controller.dart';
import '../models/aboutme_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class AboutmeItemWidget extends StatelessWidget {
  AboutmeItemWidget(
    this.aboutmeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AboutmeItemModel aboutmeItemModelObj;

  var controller = Get.find<MyPersonalInfoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              aboutmeItemModelObj.aboutMe!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 311.h,
            child: Obx(
              () => Text(
                aboutmeItemModelObj.description!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallGray60010.copyWith(
                  height: 1.60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
