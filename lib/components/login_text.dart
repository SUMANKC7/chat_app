import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final bool obsecure;
  final TextEditingController controller;
  const LoginField({super.key,
   required this.hintText,
  required this.obsecure,
  required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: TextField(
        controller:controller ,
        obscureText: obsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
