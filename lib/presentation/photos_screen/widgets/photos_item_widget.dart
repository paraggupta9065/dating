import '../controller/photos_controller.dart';
import '../models/photos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class PhotosItemWidget extends StatelessWidget {
  PhotosItemWidget(
    this.photosItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PhotosItemModel photosItemModelObj;

  var controller = Get.find<PhotosController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Obx(
            () => Text(
              photosItemModelObj.photos!.value,
              style: CustomTextStyles.titleMediumCinzelPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
