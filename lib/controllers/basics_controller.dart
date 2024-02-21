import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/models/basics_model.dart';
//pushed intern ???
/// A controller class for the BasicsScreen.
///
/// This class manages the state of the BasicsScreen, including the
/// current basicsModelObj
class BasicsController extends GetxController {
  Rx<BasicsModel> basicsModelObj = BasicsModel().obs;
}
