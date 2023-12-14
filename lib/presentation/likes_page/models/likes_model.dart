import '../../../core/app_export.dart';
import 'likesgrid_item_model.dart';

/// This class defines the variables used in the [likes_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LikesModel {
  Rx<List<LikesgridItemModel>> likesgridItemList = Rx([
    LikesgridItemModel(
        john: ImageConstant.imgRepeatGrid1.obs, johndoeMailCom: "John".obs),
    LikesgridItemModel(
        john: ImageConstant.imgEllipse659.obs, johndoeMailCom: "John".obs),
    LikesgridItemModel(
        john: ImageConstant.imgEllipse65960x60.obs, johndoeMailCom: "John".obs),
    LikesgridItemModel(
        john: ImageConstant.imgEllipse6591.obs, johndoeMailCom: "John".obs),
    LikesgridItemModel(
        john: ImageConstant.imgEllipse6592.obs, johndoeMailCom: "John".obs),
    LikesgridItemModel(
        john: ImageConstant.imgEllipse6593.obs, johndoeMailCom: "John".obs),
    LikesgridItemModel(
        john: ImageConstant.imgEllipse6594.obs, johndoeMailCom: "John".obs)
  ]);
}
