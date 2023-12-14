import 'package:tru_dating/core/app_export.dart';
import 'package:tru_dating/presentation/signup_screen/models/signup_model.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  Rx<SignupModel> signupModelObj = SignupModel().obs;
}
