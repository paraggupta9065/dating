import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignInController extends GetxController {
  final String apiUrl = 'https://trudating.vaininnovation.in/api/sign-in';

  Future<void> signIn(String name, String password) async {
    try {
      Map<String, String> data = {
        'email': name,
        'password': password,
      };

      final response = await http.post(Uri.parse(apiUrl), body: data);

      if (response.statusCode == 200) {
        print('SignIn successful');
        print(response.body);
      } else {
        print('SignIn failed');
        print('Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');
      }
    } catch (e) {
      print('Exception during SignIn: $e');
    }
  }
}
