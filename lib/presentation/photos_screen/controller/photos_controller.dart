import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/photos_screen/models/photos_model.dart';

/// A controller class for the PhotosScreen.
///
/// This class manages the state of the PhotosScreen, including the
/// current photosModelObj
class PhotosController extends GetxController {
  Rx<PhotosModel> photosModelObj = PhotosModel().obs;
}
