import '../controller/select_country_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectCountryScreen.
///
/// This class ensures that the SelectCountryController is created when the
/// SelectCountryScreen is first loaded.
class SelectCountryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectCountryController());
  }
}
