import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  final String baseUrl = 'https://tru-dating.vaininnovation.in/api/fetch-profile';

  Future<void> fetchUserProfile(int userId) async {
    try {
      final apiUrl = '$baseUrl$userId';

      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        print('Profile fetch successful');
        print(response.body);
      } else {
        print('Profile fetch failed');
        print('Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');
      }
    } catch (e) {
      print('Exception during profile fetch: $e');
    }
  }
}
