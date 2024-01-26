import 'package:tru_dating/core/app_export.dart';

import '../models/matches_model.dart';

/// A controller class for the MatchesPage.
///
/// This class manages the state of the MatchesPage, including the
/// current matchesModelObj
class MatchesController extends GetxController {
  MatchesController(this.matchesModelObj);

  Rx<MatchesModel> matchesModelObj;
}
