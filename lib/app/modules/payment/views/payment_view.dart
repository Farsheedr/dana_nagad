import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/payment_controller.dart';


class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Add Your Nagad Number'),
          backgroundColor: AppColor.primaryAppColor,),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s32),
        child: Column(
          children: [
            TextFormField(

                controller: controller.paymentController,
                decoration: InputDecoration(
                  hintText: 'Enter Nagad Account Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, // border color
                      width: 1.0, // border width
                    ),
                    borderRadius: BorderRadius.circular(8.0), // border radius
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue, // focused border color
                      width: 1.0, // focused border width
                    ),
                    borderRadius: BorderRadius.circular(8.0), // focused border radius
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
            SizedBox(height: AppSize.s20,),
            ElevatedButton(onPressed: (){
              Get.toNamed(AppPages.NAGAD);
            }, child: Text('Confirm'),
            style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryAppColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s10),
            )),)


          ],
        ),
      ),
    );
    
  }


}
