import '../models/coffee_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class CoffeeItemWidget extends StatelessWidget {
  CoffeeItemWidget(
    this.coffeeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoffeeItemModel coffeeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 9.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            coffeeItemModelObj.coffee!.value,
            style: TextStyle(
              color: (coffeeItemModelObj.isSelected?.value ?? false)
                  ? theme.colorScheme.onPrimary.withOpacity(1)
                  : appTheme.black900,
              fontSize: 14.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (coffeeItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (coffeeItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.indigo200,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
          onSelected: (value) {
            coffeeItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
