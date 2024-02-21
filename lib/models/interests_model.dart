import 'fooddrink_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [interests_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InterestsModel {
  Rx<List<FooddrinkItemModel>> fooddrinkItemList =
      Rx(List.generate(14, (index) => FooddrinkItemModel()));
}
