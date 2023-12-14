import '../controller/basics_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BasicsScreen.
///
/// This class ensures that the BasicsController is created when the
/// BasicsScreen is first loaded.
class BasicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BasicsController());
  }
}
