import '../../../core/app_export.dart';
import 'photos_item_model.dart';

/// This class defines the variables used in the [photos_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PhotosModel {
  Rx<List<PhotosItemModel>> photosItemList = Rx([
    PhotosItemModel(photos: "Photos".obs),
    PhotosItemModel(photos: "Basics".obs),
    PhotosItemModel(photos: "Prompts".obs),
    PhotosItemModel(photos: "More info".obs)
  ]);
}
