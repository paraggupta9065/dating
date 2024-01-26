import 'package:tru_dating/core/app_export.dart';

import '../views/prompt_questions_model.dart';

/// A controller class for the PromptQuestionsScreen.
///
/// This class manages the state of the PromptQuestionsScreen, including the
/// current promptQuestionsModelObj
class PromptQuestionsController extends GetxController {
  Rx<PromptQuestionsModel> promptQuestionsModelObj = PromptQuestionsModel().obs;
}
