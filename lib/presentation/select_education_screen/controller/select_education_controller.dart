import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/select_education_screen/models/select_education_model.dart';

/// A controller class for the SelectEducationScreen.
///
/// This class manages the state of the SelectEducationScreen, including the
/// current selectEducationModelObj
class SelectEducationController extends GetxController {
  Rx<SelectEducationModel> selectEducationModelObj = SelectEducationModel().obs;
}
