import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/payment_controller.dart';


class ConfirmationPaymentView extends GetView<PaymentController> {
  const ConfirmationPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.only(top: AppSize.s200,bottom: AppSize.s20),
        child: Column(

          children: [
            Align(alignment: Alignment.topCenter,
        child: Icon(Icons.check_circle_rounded,
        size: AppSize.s100,
        color: AppColor.color2,)),
            SizedBox(
              height: AppSize.s32,
            ),
            Text('Thank You!',
            style: TextStyle(
              fontSize: AppSize.textLarge
            ),),

            SizedBox(height: AppSize.s80,),
            Text('You have succesfully created your DPS A/C',
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: AppSize.textSmall),),
            SizedBox(height: AppSize.s10,),
            Text('For more information, please call ',
            style: TextStyle(fontSize: AppSize.textSmall),),
            SizedBox(height: AppSize.s16,),
            Text('+8801886326223',
            style: TextStyle(fontSize: AppSize.textSmall,
            fontWeight: FontWeight.bold),),
            Spacer(),
            ElevatedButton(onPressed: (){}, child: Text('Back To Home'),
              style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryAppColor),

            ),

          ],

        ),

      ),
    );

  }
}