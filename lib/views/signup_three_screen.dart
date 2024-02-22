import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignupThreeScreen extends StatefulWidget {
  const SignupThreeScreen({key});

  @override
  State<SignupThreeScreen> createState() => _SignupThreeScreenState();
}

class _SignupThreeScreenState extends State<SignupThreeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void SignUp(String email, String password) async {
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/register'), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        print('Account Created Successfully');
      } else {
        print('Wrong Id or Password');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp to TRU - Dating'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left : 10,right: 10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                iconColor: Colors.black,
                fillColor: Colors.black,
                hintText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left : 10,right: 10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                iconColor: Colors.black,
                fillColor: Colors.black,
                hintText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left : 10,right: 10),
            child: GestureDetector(
              onTap: () {
                SignUp(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
