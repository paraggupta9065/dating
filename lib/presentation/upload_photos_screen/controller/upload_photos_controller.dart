import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/upload_photos_screen/models/upload_photos_model.dart';

/// A controller class for the UploadPhotosScreen.
///
/// This class manages the state of the UploadPhotosScreen, including the
/// current uploadPhotosModelObj
class UploadPhotosController extends GetxController {
  Rx<UploadPhotosModel> uploadPhotosModelObj = UploadPhotosModel().obs;
}
