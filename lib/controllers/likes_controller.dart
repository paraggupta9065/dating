import 'package:tru_dating/core/app_export.dart';

import '../models/likes_model.dart';

/// A controller class for the LikesPage.
///
/// This class manages the state of the LikesPage, including the
/// current likesModelObj
class LikesController extends GetxController {
  LikesController(this.likesModelObj);

  Rx<LikesModel> likesModelObj;
}
