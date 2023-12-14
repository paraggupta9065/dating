import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/basic_info_screen/models/basic_info_model.dart';

/// A controller class for the BasicInfoScreen.
///
/// This class manages the state of the BasicInfoScreen, including the
/// current basicInfoModelObj
class BasicInfoController extends GetxController {
  Rx<BasicInfoModel> basicInfoModelObj = BasicInfoModel().obs;
}
