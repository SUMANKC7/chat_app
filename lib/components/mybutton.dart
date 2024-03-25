import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 final void Function()? onTap;
  final String button;
  const MyButton({super.key, required this.button,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(20),
          
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Center(child: Text(button,
        style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
