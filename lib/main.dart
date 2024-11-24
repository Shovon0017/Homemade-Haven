import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/screen/splash/splash.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splash() ,
    );
  }
}
