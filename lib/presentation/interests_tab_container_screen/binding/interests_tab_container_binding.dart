import '../controller/interests_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InterestsTabContainerScreen.
///
/// This class ensures that the InterestsTabContainerController is created when the
/// InterestsTabContainerScreen is first loaded.
class InterestsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InterestsTabContainerController());
  }
}
