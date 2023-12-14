import '../controller/signup_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupTwoScreen.
///
/// This class ensures that the SignupTwoController is created when the
/// SignupTwoScreen is first loaded.
class SignupTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupTwoController());
  }
}
