import '../../../core/app_export.dart';

/// This class is used in the [basics_item_widget] screen.
class BasicsItemModel {
  BasicsItemModel({
    this.photos,
    this.id,
  }) {
    photos = photos ?? Rx("Photos");
    id = id ?? Rx("");
  }

  Rx<String>? photos;

  Rx<String>? id;
}
