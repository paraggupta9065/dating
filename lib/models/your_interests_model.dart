import 'coffee_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [your_interests_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class YourInterestsModel {
  Rx<List<CoffeeItemModel>> coffeeItemList =
      Rx(List.generate(14, (index) => CoffeeItemModel()));
}
