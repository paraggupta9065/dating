import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UpdatePasswordController extends GetxController {
  final String baseUrl = 'https://tru-dating.vaininnovation.in/api/update-password/';

  Future<void> updatePassword(String username, String oldPassword, String newPassword) async {
    try {
      final apiUrl = '$baseUrl$username';
      Map<String, String> data = {
        'old_password': oldPassword,
        'new_password': newPassword,
      };

      final response = await http.put(Uri.parse(apiUrl), body: data);

      if (response.statusCode == 200) {
        print('Password update successful');
        print(response.body);
      } else {
        print('Password update failed');
        print('Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');
      }
    } catch (e) {
      print('Exception during password update: $e');
    }
  }
}
