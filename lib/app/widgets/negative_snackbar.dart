import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_styles.dart';

SnackbarController negativeSnackbar({
  IconData icon = Icons.warning_amber_rounded,
  String title = "Warning",
  required String message,
}) {
  return Get.showSnackbar(
    GetSnackBar(
      borderRadius: 10,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      snackPosition: SnackPosition.TOP,
      icon: Icon(icon, size: 30, color: Colors.white),
      titleText: Text(title,
          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
      messageText: Text(" $message", style: const TextStyle(color: Colors.white, fontSize: 16)),
      duration: const Duration(seconds: 2),
      backgroundColor: AppColor.colorFerrariRed.withOpacity(.9),
    ),
  );
}