import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/my_preferences_screen/models/my_preferences_model.dart';

/// A controller class for the MyPreferencesScreen.
///
/// This class manages the state of the MyPreferencesScreen, including the
/// current myPreferencesModelObj
class MyPreferencesController extends GetxController {
  Rx<MyPreferencesModel> myPreferencesModelObj = MyPreferencesModel().obs;
}
