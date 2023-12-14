import '../controller/select_education_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectEducationScreen.
///
/// This class ensures that the SelectEducationController is created when the
/// SelectEducationScreen is first loaded.
class SelectEducationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectEducationController());
  }
}
