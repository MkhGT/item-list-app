import 'package:flutter/material.dart';
import 'package:item_list_app/components/buttonLogin.dart';
import 'package:item_list_app/components/socialbutton.dart';
import 'package:item_list_app/components/loginField.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 30.0,
              top: 50.0,
            ),
            child: Column(
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "welcome back pal, we've been missed you",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 50),
                LoginField(
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                LoginField(
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                GradientButton(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'or',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SocialButton(
                  iconPath: 'assets/google.svg',
                  label: 'Sign in with google',
                ),
                const SizedBox(height: 15),
                SocialButton(
                  iconPath: 'assets/facebook.svg',
                  label: 'Sign in with facebook',
                  horizontalPadding: 70,
                  widthIcon: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
