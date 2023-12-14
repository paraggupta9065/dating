import '../controller/basics_controller.dart';
import '../models/basics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class BasicsItemWidget extends StatelessWidget {
  BasicsItemWidget(
    this.basicsItemModelObj, {
    Key? key,
    this.onTapTxtPhotos,
  }) : super(
          key: key,
        );

  BasicsItemModel basicsItemModelObj;

  var controller = Get.find<BasicsController>();

  VoidCallback? onTapTxtPhotos;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {
            onTapTxtPhotos!.call();
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Obx(
              () => Text(
                basicsItemModelObj.photos!.value,
                style: CustomTextStyles.titleMediumCinzelGray500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
