import '../../../core/app_export.dart';

/// This class is used in the [likesgrid_item_widget] screen.
class LikesgridItemModel {
  LikesgridItemModel({
    this.john,
    this.johndoeMailCom,
    this.id,
  }) {
    john = john ?? Rx(ImageConstant.imgRepeatGrid1);
    johndoeMailCom = johndoeMailCom ?? Rx("John");
    id = id ?? Rx("");
  }

  Rx<String>? john;

  Rx<String>? johndoeMailCom;

  Rx<String>? id;
}
