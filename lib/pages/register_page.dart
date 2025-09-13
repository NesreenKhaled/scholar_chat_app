import 'package:flutter/material.dart';
import 'package:scholar_chat_app/pages/widgets/custom_button.dart';
import 'package:scholar_chat_app/pages/widgets/custom_text_field.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD0D0F5),
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
                      'Register',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'roboto',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              CustomTextField(hintText: 'Email', label: Text('Email')),
              SizedBox(height: 15),
              CustomTextField(hintText: 'Password', label: Text('Password')),
              SizedBox(height: 20),
              CustomButton(bottonName: 'sign up'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already have an account ?',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context, LoginPage.id);
                    },
                    child: Text(
                      ' Login',
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
