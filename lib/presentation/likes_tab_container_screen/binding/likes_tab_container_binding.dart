import '../controller/likes_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LikesTabContainerScreen.
///
/// This class ensures that the LikesTabContainerController is created when the
/// LikesTabContainerScreen is first loaded.
class LikesTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LikesTabContainerController());
  }
}
