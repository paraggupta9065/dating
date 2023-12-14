import '../controller/some_more_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SomeMoreInfoScreen.
///
/// This class ensures that the SomeMoreInfoController is created when the
/// SomeMoreInfoScreen is first loaded.
class SomeMoreInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SomeMoreInfoController());
  }
}
