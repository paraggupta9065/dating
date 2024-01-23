import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final String apiUrl = 'https://tru-dating.vaininnovation.in/api/sign-up';

  Future<void> signUp(String username, String email, String password) async {
    try {
      Map<String, String> data = {
        'username': username,
        'email': email,
        'password': password,
      };

      // HTTP POST request
      final response = await http.post(Uri.parse(apiUrl), body: data);

      // if the request was successful
      if (response.statusCode == 200) {
        print('SignUp successful');
        print(response.body);
      } else {
        // errors if the request was not successful
        print('SignUp failed');
        print('Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');
      }
    } catch (e) {
      print('Exception during SignUp: $e');
    }
  }
}
