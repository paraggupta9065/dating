import '../controller/video_record_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoRecordScreen.
///
/// This class ensures that the VideoRecordController is created when the
/// VideoRecordScreen is first loaded.
class VideoRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoRecordController());
  }
}
