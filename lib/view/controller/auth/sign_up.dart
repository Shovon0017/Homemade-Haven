import 'package:flutter/material.dart';

class SignUpService {
  static Future<bool> signUpService({
    required String email,
    required String phone,
    required String password,
    required String password_confirmation
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return true;
    } catch (e) {
      debugPrint("Error : $e");
    }
    return false;
  }
}
