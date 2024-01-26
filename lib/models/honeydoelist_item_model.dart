import '../../../core/app_export.dart';

/// This class is used in the [honeydoelist_item_widget] screen.
class HoneydoelistItemModel {
  HoneydoelistItemModel({
    this.likesYou,
    this.likesYou1,
    this.seven,
    this.id,
  }) {
    likesYou = likesYou ?? Rx(ImageConstant.imgGroup30901);
    likesYou1 = likesYou1 ?? Rx("Likes You");
    seven = seven ?? Rx("7");
    id = id ?? Rx("");
  }

  Rx<String>? likesYou;

  Rx<String>? likesYou1;

  Rx<String>? seven;

  Rx<String>? id;
}
