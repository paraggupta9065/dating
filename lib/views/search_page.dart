import 'package:flutter/material.dart' hide SearchController;
import 'package:tru_dating/core/app_export.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body:
              // Container(
              //   width: mediaQueryData.size.width,
              //   height: mediaQueryData.size.height,
              //   decoration: BoxDecoration(
              //     color: theme.colorScheme.onPrimary.withOpacity(1),
              //     image: DecorationImage(
              //       image: AssetImage(
              //         ImageConstant.imgGroup41,
              //       ),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   child: Container(
              //     width: double.maxFinite,
              //     decoration: AppDecoration.fillOnPrimary.copyWith(
              //       image: DecorationImage(
              //         image: AssetImage(
              //           ImageConstant.imgGroup41,
              //         ),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     child: Column(
              //       children: [
              //         SizedBox(height: 12.v),
              //         Padding(
              //           padding: EdgeInsets.symmetric(horizontal: 15.h),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "lbl_1500_results".tr,
              //                 style: CustomTextStyles.bodyMediumGray900_1,
              //               ),
              //               SizedBox(height: 10.v),
              //               CustomImageView(
              //                 imagePath: ImageConstant.imgRectangle17743,
              //                 height: 626.v,
              //                 width: 345.h,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup41,
                ),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(8.h),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.0, // Spacing between columns
                mainAxisSpacing: 8.0, // Spacing between rows
              ),
              itemCount: 20, // Total number of items (2 columns * 10 rows)
              itemBuilder: (BuildContext context, int index) {
                return MyGridItem(index + 1); // You can customize the grid item
              },
            ),
          )),
    );
  }
}

class MyGridItem extends StatelessWidget {
  final int itemIndex;

  MyGridItem(this.itemIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              color: theme.colorScheme.onPrimary.withOpacity(1),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgRectangle17743,
                ),
                fit: BoxFit.cover,
              ),
            ),
            width: 200,
            height: 160,
            child: Center(
              child: Text(
                'Item $itemIndex',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.heart_broken,
                size: 25.h,
                color: Colors.grey,
              ),
              Icon(
                Icons.comment_rounded,
                size: 25.h,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
