import '../controller/more_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MoreInfoScreen.
///
/// This class ensures that the MoreInfoController is created when the
/// MoreInfoScreen is first loaded.
class MoreInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoreInfoController());
  }
}
