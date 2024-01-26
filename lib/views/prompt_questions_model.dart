import '../../../core/app_export.dart';
import 'promptquestionslist_item_model.dart';

/// This class defines the variables used in the [prompt_questions_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PromptQuestionsModel {
  Rx<List<PromptquestionslistItemModel>> promptquestionslistItemList = Rx([
    PromptquestionslistItemModel(
        aboutMe: "About Me".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    PromptquestionslistItemModel(
        aboutMe: "My 3rd grade teacher describe me as...".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    PromptquestionslistItemModel(
        aboutMe: "Describe your ideal first date".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    PromptquestionslistItemModel(
        aboutMe:
            "If you could live anywhere in the world, where would you live?"
                .obs,
        description: "Write here...".obs),
    PromptquestionslistItemModel(
        aboutMe: "Tell me about your best day at work".obs,
        description: "Write here...".obs)
  ]);
}
