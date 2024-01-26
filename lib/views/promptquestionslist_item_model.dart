import '../../../core/app_export.dart';

/// This class is used in the [promptquestionslist_item_widget] screen.
class PromptquestionslistItemModel {
  PromptquestionslistItemModel({
    this.aboutMe,
    this.description,
    this.id,
  }) {
    aboutMe = aboutMe ?? Rx("About Me");
    description = description ??
        Rx("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et.");
    id = id ?? Rx("");
  }

  Rx<String>? aboutMe;

  Rx<String>? description;

  Rx<String>? id;
}
