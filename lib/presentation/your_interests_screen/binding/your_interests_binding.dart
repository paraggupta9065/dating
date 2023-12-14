import '../controller/your_interests_controller.dart';
import 'package:get/get.dart';

/// A binding class for the YourInterestsScreen.
///
/// This class ensures that the YourInterestsController is created when the
/// YourInterestsScreen is first loaded.
class YourInterestsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourInterestsController());
  }
}
