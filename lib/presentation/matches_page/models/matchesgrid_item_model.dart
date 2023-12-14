import '../../../core/app_export.dart';

/// This class is used in the [matchesgrid_item_widget] screen.
class MatchesgridItemModel {
  MatchesgridItemModel({
    this.johndoeMailCom,
    this.johndoeMailCom1,
    this.id,
  }) {
    johndoeMailCom = johndoeMailCom ?? Rx("75%");
    johndoeMailCom1 = johndoeMailCom1 ?? Rx("Honey & John");
    id = id ?? Rx("");
  }

  Rx<String>? johndoeMailCom;

  Rx<String>? johndoeMailCom1;

  Rx<String>? id;
}
