import '../controller/my_preferences_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyPreferencesScreen.
///
/// This class ensures that the MyPreferencesController is created when the
/// MyPreferencesScreen is first loaded.
class MyPreferencesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyPreferencesController());
  }
}
