import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/payment_controller.dart';


class NagadPaymentView extends GetView<PaymentController> {
  const NagadPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text('Add Your Nagad Number'),
    backgroundColor: AppColor.primaryAppColor,),
    body: Column(
      children: [ElevatedButton(onPressed: (){
        Get.toNamed(AppPages.DETAILS);
      }, child: Text('Go to details page'))],
    ),);

  }
}