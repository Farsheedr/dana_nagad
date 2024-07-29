import 'package:dana_nagad/app/modules/nominee_information/controllers/nominee_information_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/payment_controller.dart';


class PaymentDetailsView extends GetView<PaymentController> {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NomineeController nomineeController =  Get.find<NomineeController>();
    return Scaffold(
      appBar:AppBar(title: Text('DPS Payment Details'),
        backgroundColor: AppColor.primaryAppColor,),
      body:Padding(
        padding: EdgeInsets.only(top: AppSize.s40,right:AppSize.s16,left: AppSize.s16),
        child: Column(
          children: [
            Card(


              elevation: 3.0,
              child:Container(padding: EdgeInsets.all(AppSize.s6),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Account Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text('0123456789',
                    style: TextStyle(color:AppColor.colorGray),
                        ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s10,),
                    Text('Bank/Wallet Name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text('Nagad',
                      style: TextStyle(color:AppColor.colorBlack,
                      fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s10,),
                    Text('DPS Installment Amount',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text('৳ 5000/month',
                      style: TextStyle(color:AppColor.colorBlack,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s10,),
                    Text('Amount Deduction',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text('৳ 5000',
                      style: TextStyle(color:AppColor.colorBlack,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s10,),
                    Text('Processing Fee',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text('৳ 300',
                      style: TextStyle(color:AppColor.colorGray,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s10,),
                    Text('DPS Installment Fee',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text('Jun 15 2023',
                      style: TextStyle(color:AppColor.colorGray,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color:AppColor.colorGray.withOpacity(0.2),
                      thickness: AppSize.s2,
                    ),


                  ],

                ),
              ) ,
            ),
            SizedBox(height: AppSize.s20,),
            Row(
                children: [
                  Obx(() {
                    return Checkbox(
                      value: controller.isTermAccepted.value,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s5)
                      ),
                      onChanged: (bool? value) {
                        controller.isTermAccepted.value = value!;
                      },
                    );
                  }),

                  Text.rich(TextSpan(
                      children: [
                        TextSpan(text: 'I have read and agreed to the ',
                            style: TextStyle(
                              color: AppColor.colorGray,

                              fontSize: AppSize.textXSmall,
                            )),
                        TextSpan(
                            text: ' terms and conditions',
                            style: TextStyle(color: AppColor.primaryAppColor,
                                fontSize: AppSize.textXSmall,
                                fontWeight: FontWeight.normal)
                        )
                      ]
                  )),
                ]
            ),
            SizedBox(height: AppSize.s10,),
            Container(
              child: ElevatedButton(onPressed: (){nomineeController.nomineeRegistration();}, child: Text('Confirm',


              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryAppColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s6)
                )
                    
              ),
                
              ),

            )
          ],
        ),


      )
    );

  }
}