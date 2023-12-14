import '../controller/upload_photos_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadPhotosScreen.
///
/// This class ensures that the UploadPhotosController is created when the
/// UploadPhotosScreen is first loaded.
class UploadPhotosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadPhotosController());
  }
}
