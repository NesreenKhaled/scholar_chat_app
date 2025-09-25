import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:scholar_chat_app/constants.dart';
import 'package:scholar_chat_app/helper/show_snack_bar.dart';
import 'package:scholar_chat_app/pages/register_page.dart';
import 'package:scholar_chat_app/pages/widgets/custom_button.dart';
import 'package:scholar_chat_app/pages/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;

  bool isLoading = false;
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
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
                CustomTextField(
                  onChang: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                  label: Text('Email'),
                ),
                SizedBox(height: 15),
                CustomTextField(
                  onChang: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                  label: Text('Password'),
                ),
                SizedBox(height: 20),
                CustomButton(
                  bottonName: 'Login',
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await loginUser();
                        showSnacBar(context, 'User signed in successfully');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnacBar(context, 'No user found for that email');
                        } else if (e.code == 'wrong-password') {
                          showSnacBar(context, 'Uncorrect Password');
                        }
                      } catch (e) {
                        showSnacBar(
                          context,
                          'An error occurred, Please try again.',
                        );
                      }
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
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
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
