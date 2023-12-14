import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/video_screen/models/video_model.dart';

/// A controller class for the VideoScreen.
///
/// This class manages the state of the VideoScreen, including the
/// current videoModelObj
class VideoController extends GetxController {
  Rx<VideoModel> videoModelObj = VideoModel().obs;

  Rx<String> radioGroup = "".obs;
}
