import '../controller/video_intro_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoIntroScreen.
///
/// This class ensures that the VideoIntroController is created when the
/// VideoIntroScreen is first loaded.
class VideoIntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoIntroController());
  }
}
