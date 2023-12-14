import '../controller/prompt_questions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PromptQuestionsScreen.
///
/// This class ensures that the PromptQuestionsController is created when the
/// PromptQuestionsScreen is first loaded.
class PromptQuestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PromptQuestionsController());
  }
}
