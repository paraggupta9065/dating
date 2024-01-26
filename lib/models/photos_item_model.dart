import '../../../core/app_export.dart';

/// This class is used in the [photos_item_widget] screen.
class PhotosItemModel {
  PhotosItemModel({
    this.photos,
    this.id,
  }) {
    photos = photos ?? Rx("Photos");
    id = id ?? Rx("");
  }

  Rx<String>? photos;

  Rx<String>? id;
}
