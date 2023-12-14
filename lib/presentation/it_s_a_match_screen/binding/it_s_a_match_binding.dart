import '../controller/it_s_a_match_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ItSAMatchScreen.
///
/// This class ensures that the ItSAMatchController is created when the
/// ItSAMatchScreen is first loaded.
class ItSAMatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItSAMatchController());
  }
}
