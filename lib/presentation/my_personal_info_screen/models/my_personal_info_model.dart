import '../../../core/app_export.dart';
import 'widget_item_model.dart';
import 'aboutme_item_model.dart';

/// This class defines the variables used in the [my_personal_info_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyPersonalInfoModel {
  Rx<List<WidgetItemModel>> widgetItemList = Rx([
    WidgetItemModel(
        image: ImageConstant.imgAyoOgunseinde105x105.obs, widget: "2".obs),
    WidgetItemModel(image: ImageConstant.imgAyoOgunseinde.obs, widget: "3".obs),
    WidgetItemModel(image: ImageConstant.imgAyoOgunseinde1.obs, widget: "4".obs)
  ]);

  Rx<List<AboutmeItemModel>> aboutmeItemList = Rx([
    AboutmeItemModel(
        aboutMe: "About Me".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    AboutmeItemModel(
        aboutMe: "My 3rd grade teacher describe me as...".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs),
    AboutmeItemModel(
        aboutMe: "My real-life superpower is...".obs,
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedias nonumy eirmod tempor invidunt ut labore et dolore magna aliqu yam erat, sed diam voluptua. At vero eos et."
                .obs)
  ]);
}
