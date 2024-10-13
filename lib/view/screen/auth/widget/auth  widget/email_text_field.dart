import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red)),
          labelText: "E-mail"),
      validator: (value) {
        if (value == "" || value == null) {
          return "Email can't be empty";
        } else if (!(value.toString().contains(".") ||
            value.toString().contains("@"))) {
          return "Please enter valid email";
        }
        return null;
      },
    );
  }
}