import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

import '../controllers/prompts_controller.dart';
import '../views/photos1_item_model.dart';

// ignore: must_be_immutable
class Photos1ItemWidget extends StatelessWidget {
  Photos1ItemWidget(
    this.photos1ItemModelObj, {
    Key? key,
    this.onTapTxtPhotos,
  }) : super(
          key: key,
        );

  Photos1ItemModel photos1ItemModelObj;

  var controller = Get.find<PromptsController>();

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
                photos1ItemModelObj.photos!.value,
                style: CustomTextStyles.titleMediumCinzelGray500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
