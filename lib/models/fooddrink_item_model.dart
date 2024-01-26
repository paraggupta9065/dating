import '../../../core/app_export.dart';

/// This class is used in the [fooddrink_item_widget] screen.
class FooddrinkItemModel {
  Rx<String>? coffee = Rx("Coffee");

  Rx<bool>? isSelected = Rx(false);
}
