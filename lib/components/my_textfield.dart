import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
