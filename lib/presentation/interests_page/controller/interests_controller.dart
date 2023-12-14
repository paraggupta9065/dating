import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/interests_page/models/interests_model.dart';

/// A controller class for the InterestsPage.
///
/// This class manages the state of the InterestsPage, including the
/// current interestsModelObj
class InterestsController extends GetxController {
  InterestsController(this.interestsModelObj);

  Rx<InterestsModel> interestsModelObj;
}
