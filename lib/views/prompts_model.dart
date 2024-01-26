import '../../../core/app_export.dart';
import 'aboutmelist_item_model.dart';
import 'photos1_item_model.dart';

/// This class defines the variables used in the [prompts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PromptsModel {
  Rx<List<AboutmelistItemModel>> aboutmelistItemList = Rx([
    AboutmelistItemModel(
        aboutMe: "About Me".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    AboutmelistItemModel(
        aboutMe: "My 3rd grade teacher describe me as...".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    AboutmelistItemModel(
        aboutMe: "Describe your ideal first date".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    AboutmelistItemModel(
        aboutMe:
            "If you could live anywhere in the world, where would you live?"
                .obs,
        description: "Write here...".obs),
    AboutmelistItemModel(
        aboutMe: "Tell me about your best day at work".obs,
        description: "Write here...".obs),
    AboutmelistItemModel(
        aboutMe: "Describe your best friend".obs,
        description: "Write here...".obs)
  ]);

  Rx<List<Photos1ItemModel>> photos1ItemList = Rx([
    Photos1ItemModel(photos: "Photos".obs),
    Photos1ItemModel(photos: "Basics".obs),
    Photos1ItemModel(photos: "Prompts".obs),
    Photos1ItemModel(photos: "More info".obs)
  ]);
}
