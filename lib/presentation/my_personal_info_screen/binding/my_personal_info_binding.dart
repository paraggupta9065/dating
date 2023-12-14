import '../controller/my_personal_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyPersonalInfoScreen.
///
/// This class ensures that the MyPersonalInfoController is created when the
/// MyPersonalInfoScreen is first loaded.
class MyPersonalInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyPersonalInfoController());
  }
}
