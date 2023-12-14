import '../../../core/app_export.dart';

/// This class is used in the [photos1_item_widget] screen.
class Photos1ItemModel {
  Photos1ItemModel({
    this.photos,
    this.id,
  }) {
    photos = photos ?? Rx("Photos");
    id = id ?? Rx("");
  }

  Rx<String>? photos;

  Rx<String>? id;
}
