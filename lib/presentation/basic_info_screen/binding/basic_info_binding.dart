import '../controller/basic_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BasicInfoScreen.
///
/// This class ensures that the BasicInfoController is created when the
/// BasicInfoScreen is first loaded.
class BasicInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BasicInfoController());
  }
}
