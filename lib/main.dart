
import 'package:chatting_app/auth/login_or_register.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: "Chat",
      home:LoginOrRegister(),
    );
  }
}