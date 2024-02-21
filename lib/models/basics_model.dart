import '../../../core/app_export.dart';
import 'basics_item_model.dart';

/// This class defines the variables used in the [basics_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BasicsModel {
  Rx<List<BasicsItemModel>> basicsItemList = Rx([
    BasicsItemModel(photos: "Photos".obs),
    BasicsItemModel(photos: "Basics".obs),
    BasicsItemModel(photos: "Prompts".obs),
    BasicsItemModel(photos: "More info".obs)
  ]);
}
