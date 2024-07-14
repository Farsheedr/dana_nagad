import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isPasswordVisible = false.obs;
  RxBool passwordError = false.obs;
  RxBool isChecked = false.obs;
  void togglePasswordVisibility(){
    isPasswordVisible.value = !isPasswordVisible.value;

  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
