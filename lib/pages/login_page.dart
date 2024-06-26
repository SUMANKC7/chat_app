// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chatting_app/components/mybutton.dart';

import 'package:flutter/material.dart';

import 'package:chatting_app/components/login_text.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final void Function()? onTap;

  LoginPage({
    super.key, required this.onTap,
  });
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //creating icons
            Icon(
              Icons.message,
              size: 120,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //Show welcome message
          const  Text("Welcome"),
            //email address
            LoginField(
              hintText: "Enter Username",
              obsecure: false,
              controller: _usernameController,
            ),
            //pw textfield
            LoginField(
              hintText: "Enter Password",
              obsecure: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 30),
            //login button
            MyButton(
              button: "Login",
              onTap: login,
            ),
            //register now
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not a member?",
                ),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    " Register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 15, 130, 224)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
