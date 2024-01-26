import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/models/choose_plan_model.dart';

/// A controller class for the ChoosePlanScreen.
///
/// This class manages the state of the ChoosePlanScreen, including the
/// current choosePlanModelObj
class ChoosePlanController extends GetxController {
  Rx<ChoosePlanModel> choosePlanModelObj = ChoosePlanModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
