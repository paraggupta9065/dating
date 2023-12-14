import '../controller/view_my_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewMyProfileScreen.
///
/// This class ensures that the ViewMyProfileController is created when the
/// ViewMyProfileScreen is first loaded.
class ViewMyProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewMyProfileController());
  }
}
