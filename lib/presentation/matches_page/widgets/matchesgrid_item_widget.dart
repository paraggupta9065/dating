import '../controller/matches_controller.dart';
import '../models/matchesgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class MatchesgridItemWidget extends StatelessWidget {
  MatchesgridItemWidget(
    this.matchesgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MatchesgridItemModel matchesgridItemModelObj;

  var controller = Get.find<MatchesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgProfile,
          height: 50.v,
          width: 90.h,
        ),
        Obx(
          () => Text(
            matchesgridItemModelObj.johndoeMailCom!.value,
            style: CustomTextStyles.labelLargePink400,
          ),
        ),
        Obx(
          () => Text(
            matchesgridItemModelObj.johndoeMailCom1!.value,
            style: CustomTextStyles.labelLargeOnPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
