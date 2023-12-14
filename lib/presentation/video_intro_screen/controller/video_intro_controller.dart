import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/video_intro_screen/models/video_intro_model.dart';

/// A controller class for the VideoIntroScreen.
///
/// This class manages the state of the VideoIntroScreen, including the
/// current videoIntroModelObj
class VideoIntroController extends GetxController {
  Rx<VideoIntroModel> videoIntroModelObj = VideoIntroModel().obs;
}
