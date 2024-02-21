import 'package:tru_dating/core/app_export.dart';

import '../models/your_interests_model.dart';

/// A controller class for the YourInterestsScreen.
///
/// This class manages the state of the YourInterestsScreen, including the
/// current yourInterestsModelObj
class YourInterestsController extends GetxController {
  Rx<YourInterestsModel> yourInterestsModelObj = YourInterestsModel().obs;
}
