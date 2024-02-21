import '../../../core/app_export.dart';
import 'honeydoelist_item_model.dart';

/// This class defines the variables used in the [honey_doe_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HoneyDoeModel {
  Rx<List<HoneydoelistItemModel>> honeydoelistItemList = Rx([
    HoneydoelistItemModel(
        likesYou: ImageConstant.imgGroup30901.obs,
        likesYou1: "Likes You".obs,
        seven: "7".obs),
    HoneydoelistItemModel(
        likesYou: ImageConstant.imgInfo.obs,
        likesYou1: "Matches".obs,
        seven: "25".obs),
    HoneydoelistItemModel(
        likesYou: ImageConstant.imgGroup30901.obs,
        likesYou1: "You Like".obs,
        seven: "7".obs)
  ]);
}
