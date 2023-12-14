import '../controller/likes_controller.dart';
import '../models/likesgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class LikesgridItemWidget extends StatelessWidget {
  LikesgridItemWidget(
    this.likesgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LikesgridItemModel likesgridItemModelObj;

  var controller = Get.find<LikesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: likesgridItemModelObj.john!.value,
            height: 60.adaptSize,
            width: 60.adaptSize,
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => Text(
            likesgridItemModelObj.johndoeMailCom!.value,
            style: CustomTextStyles.labelLargeOnPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
