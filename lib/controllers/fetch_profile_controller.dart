import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsersProfileFetch extends GetxController {
  var userProfile = {}.obs;

  Future<void> fetchUserProfile(String userId) async {
    try {
      var response = await http.get(
        Uri.parse(
            'https://tru-dating.vaininnovation.in/api/fetch-profile/$userId'),
      );

      if (response.statusCode == 200) {
        userProfile.value = response.body as Map;
      } else {
        throw Exception('Failed to load user profile');
      }
    } catch (e) {
      throw Exception('Failed to load user profile. Error: $e');
    }
  }

  // used getters for get the perticular data ex. gender  from the databse > column

  String get gender => userProfile['gender'] ?? '';
  String get relationshipStatus => userProfile['relationship_status'] ?? '';
  String get height => userProfile['height'] ?? '';
  String get profession => userProfile['profession'] ?? '';
  String get age => userProfile['age'] ?? '';
  String get bodyType => userProfile['body_type'] ?? '';
  String get exercise => userProfile['exercise'] ?? '';
  String get ethnicity => userProfile['ethinicity'] ?? '';
  String get religion => userProfile['religion'] ?? '';
  String get kids => userProfile['kids'] ?? '';
  String get lookingFor => userProfile['looking_for'] ?? '';
  String get highestDegree => userProfile['graduate_degree'] ?? '';
  String get relationshipGoal => userProfile['relationship_goal'] ?? '';
}
