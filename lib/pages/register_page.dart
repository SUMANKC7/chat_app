import 'package:chatting_app/components/login_text.dart';
import 'package:chatting_app/components/mybutton.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final void Function()? onTap;
  RegisterPage({super.key,required this.onTap});
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          
          children: [
            //creating icons
            Icon(
              Icons.message,
              size: 120,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //Show welcome message
            const Text(
              "Let's create a new account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
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

            LoginField(
              hintText: "Confirm Password",
              obsecure: true,
              controller: _confirmPasswordController,
            ),
            const SizedBox(height: 30),
            //login button
            GestureDetector(
              onTap:onTap,
              child: MyButton(
                button: "Register",
                onTap: register,
              ),
            ),
            //register now
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
