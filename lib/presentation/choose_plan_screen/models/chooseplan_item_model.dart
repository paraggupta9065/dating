import '../../../core/app_export.dart';

/// This class is used in the [chooseplan_item_widget] screen.
class ChooseplanItemModel {
  ChooseplanItemModel({
    this.johndoeMailCom,
    this.johndoeMailCom1,
    this.price,
    this.id,
  }) {
    johndoeMailCom = johndoeMailCom ?? Rx("1");
    johndoeMailCom1 = johndoeMailCom1 ?? Rx("Week");
    price = price ?? Rx("7.99");
    id = id ?? Rx("");
  }

  Rx<String>? johndoeMailCom;

  Rx<String>? johndoeMailCom1;

  Rx<String>? price;

  Rx<String>? id;
}
