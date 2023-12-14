import '../../../core/app_export.dart';

/// This class is used in the [seewhoalready_item_widget] screen.
class SeewhoalreadyItemModel {
  SeewhoalreadyItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
