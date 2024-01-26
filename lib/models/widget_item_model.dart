import '../../../core/app_export.dart';

/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel {
  WidgetItemModel({
    this.image,
    this.widget,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgAyoOgunseinde105x105);
    widget = widget ?? Rx("2");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? widget;

  Rx<String>? id;
}
