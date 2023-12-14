import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/video_record_screen/models/video_record_model.dart';

/// A controller class for the VideoRecordScreen.
///
/// This class manages the state of the VideoRecordScreen, including the
/// current videoRecordModelObj
class VideoRecordController extends GetxController {
  Rx<VideoRecordModel> videoRecordModelObj = VideoRecordModel().obs;

  Rx<String> radioGroup = "".obs;
}
