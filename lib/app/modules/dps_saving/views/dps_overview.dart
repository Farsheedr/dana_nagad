import 'package:dana_nagad/app/modules/dps_saving/controllers/dps_saving_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DpsOverviewView extends GetView<DpsSavingController> {
  const DpsOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: Text('Overview'),
    backgroundColor: AppColor.primaryAppColor,
    ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: 'LBF',
                  style: TextStyle(
                    color: AppColor.colorFerrariRed,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.textXLarge,
                  )),
                  TextSpan(
                    text: ' & Dana',
                    style: TextStyle(color: AppColor.colorBlack,
                    fontSize: AppSize.textXLarge,
                    fontWeight: FontWeight.bold)
                  )
                ]
              )),
              SizedBox(height: AppSize.s8,),
              Text('Save your money securely with',
                style: TextStyle(color: AppColor.colorGray,
                fontSize: AppSize.textMedium) ,),
              SizedBox(height: AppSize.s8,),
              Text('LankaBangla Finance PLC.',
                style: TextStyle(color: AppColor.colorFerrariRed,
                    fontSize: AppSize.textMedium,
                fontWeight: FontWeight.bold) ,),
              SizedBox(height: AppSize.s16,),
              Text('50000',
                style: TextStyle(color: AppColor.colorBlack,
                    fontSize: AppSize.textXLarge,
                    fontWeight: FontWeight.bold) ,),
      SizedBox(height: AppSize.s10,),
      Text('Maturity Amount',
        style: TextStyle(color: AppColor.colorBlack,
            fontSize: AppSize.textXMedium,
            fontWeight: FontWeight.normal)),
              SizedBox(height: AppSize.s16,),
              Text('${controller.selectedAmount.value}/month',
                style: TextStyle(color: AppColor.colorBlack,
                    fontSize: AppSize.textXLarge,
                    fontWeight: FontWeight.bold) ,),
              SizedBox(height: AppSize.s10,),
              Text('Installments',
                  style: TextStyle(color: AppColor.colorBlack,
                      fontSize: AppSize.textXMedium,
                      fontWeight: FontWeight.normal)),
              SizedBox(height: AppSize.s16,),
              Text('${controller.selectedTenure.value}',
                style: TextStyle(color: AppColor.colorBlack,
                    fontSize: AppSize.textXLarge,
                    fontWeight: FontWeight.bold) ,),
              SizedBox(height: AppSize.s10,),
              Text('Tenure',
                  style: TextStyle(color: AppColor.colorBlack,
                      fontSize: AppSize.textXMedium,
                      fontWeight: FontWeight.normal)),
              SizedBox(height: AppSize.s16,),
              Text('10%',
                style: TextStyle(color: AppColor.colorBlack,
                    fontSize: AppSize.textXLarge,
                    fontWeight: FontWeight.bold) ,),
              SizedBox(height: AppSize.s10,),
              Text('Interest',
                  style: TextStyle(color: AppColor.colorBlack,
                      fontSize: AppSize.textXMedium,
                      fontWeight: FontWeight.normal)),
              SizedBox(
                height: AppSize.s50,
              ),
              SizedBox(height: AppSize.s16),
              Row(
                children: [
                  Obx(() {
                    return Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s5),
                      ),
                      value: controller.isTermAccepted.value,
                      onChanged: (bool? value) {
                        controller.isTermAccepted.value = value!;
                      },
                    );
                  }),

                    Text.rich(TextSpan(
                        children: [
                          TextSpan(text: 'I have read and agree to the ',
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
              SizedBox(
                height: AppSize.s16,
              ),
              Container(
                width: Get.width/1.35,
                child: ElevatedButton(onPressed: (){
                  Get.toNamed(AppPages.PAYMENT);
                }, child: Text('Proceed make your DPS Payment',

                ),
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryAppColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s10)
                )),
                    ),
              )
                ],
              ),



        )

          ),
        );


  }
}