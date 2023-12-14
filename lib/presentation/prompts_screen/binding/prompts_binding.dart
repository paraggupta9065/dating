import '../controller/prompts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PromptsScreen.
///
/// This class ensures that the PromptsController is created when the
/// PromptsScreen is first loaded.
class PromptsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PromptsController());
  }
}
