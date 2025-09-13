import 'package:flutter/material.dart';
import 'package:scholar_chat_app/constants.dart';
import 'package:scholar_chat_app/pages/register_page.dart';
import 'package:scholar_chat_app/pages/widgets/custom_button.dart';
import 'package:scholar_chat_app/pages/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
static String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 70),
              Image.asset('assets/images/scholar.png'),
              SizedBox(height: 10),
              Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'roboto',
                  color: Colors.white,
                ),
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'roboto',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              CustomTextField(hintText: 'Email', label: Text('Email')),
              SizedBox(height: 15),
              CustomTextField(hintText: 'Password', label: Text('Password')),
              SizedBox(height: 20),
              CustomButton(bottonName: 'Login'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account ?',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: Text(
                      ' Register now',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
