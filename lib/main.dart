import 'package:flutter/material.dart';
import 'package:homemade_haven/view/screen/auth/sign_in.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SignIn() ,
    );
  }
}
