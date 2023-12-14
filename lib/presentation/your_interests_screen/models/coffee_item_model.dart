import '../../../core/app_export.dart';

/// This class is used in the [coffee_item_widget] screen.
class CoffeeItemModel {
  Rx<String>? coffee = Rx("Coffee");

  Rx<bool>? isSelected = Rx(false);
}
