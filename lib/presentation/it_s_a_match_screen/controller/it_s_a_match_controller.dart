import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/it_s_a_match_screen/models/it_s_a_match_model.dart';

/// A controller class for the ItSAMatchScreen.
///
/// This class manages the state of the ItSAMatchScreen, including the
/// current itSAMatchModelObj
class ItSAMatchController extends GetxController {
  Rx<ItSAMatchModel> itSAMatchModelObj = ItSAMatchModel().obs;
}
