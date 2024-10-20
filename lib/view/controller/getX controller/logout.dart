
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/controller/api_controller/auth/log_out.dart';
import 'package:homemade_haven/view/screen/auth/sign_in.dart';
class LogOutService extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  logOutFun() async {
    isLoading.value = true;
    bool message = await LogOutApi.logoutApi();
    isLoading.value = false;

    if (message) {
      Get.offAll(() =>   const SignIn());
      return;
    }
  }
}
