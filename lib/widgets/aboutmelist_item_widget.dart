import '../controllers/prompts_controller.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

import '../views/aboutmelist_item_model.dart';

// ignore: must_be_immutable
class AboutmelistItemWidget extends StatelessWidget {
  AboutmelistItemWidget(
    this.aboutmelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AboutmelistItemModel aboutmelistItemModelObj;

  var controller = Get.find<PromptsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Text(
              aboutmelistItemModelObj.aboutMe!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 303.h,
            child: Obx(
              () => Text(
                aboutmelistItemModelObj.description!.value,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallGray600.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
