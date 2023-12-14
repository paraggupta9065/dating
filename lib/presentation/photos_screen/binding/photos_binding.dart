import '../controller/photos_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PhotosScreen.
///
/// This class ensures that the PhotosController is created when the
/// PhotosScreen is first loaded.
class PhotosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhotosController());
  }
}
