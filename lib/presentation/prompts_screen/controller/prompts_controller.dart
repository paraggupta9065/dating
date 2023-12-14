import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/prompts_screen/models/prompts_model.dart';

/// A controller class for the PromptsScreen.
///
/// This class manages the state of the PromptsScreen, including the
/// current promptsModelObj
class PromptsController extends GetxController {
  Rx<PromptsModel> promptsModelObj = PromptsModel().obs;
}
