import 'package:dana_nagad/app/modules/dps_saving/controllers/dps_saving_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:dana_nagad/app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/scheme_controller.dart';

class SchemeView extends GetView<SchemeController> {

  const SchemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DpsSavingController dpsSavingController =  Get.find<DpsSavingController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Scheme'),
        backgroundColor: AppColor.primaryAppColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s16),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(AppSize.s10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: Get.height/6,
                    child: Image.asset(AppAssets.lankaBanglaLogo,
                    fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(
                  height: AppSize.s10,
                ),
                Text('৳ ${dpsSavingController.selectedAmount.value} per month for ${dpsSavingController.selectedTenure.value}',
                style: TextStyle(
                  color:AppColor.colorGray,
                ),),
                SizedBox(height: AppSize.s10,),
                Text('৳ 50000',style: TextStyle(
                  fontSize: AppSize.textXXLarge,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: AppSize.s10,),
                Text('with 10% interest',
                style: TextStyle(
                  color: AppColor.primaryAppColor,
                  fontSize: AppSize.textMedium,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: AppSize.s10,
                ),
                Padding(
                  padding:  EdgeInsets.all(AppSize.s20),
                  child: Row(
                    
                    children: [
                    
                      Icon(Icons.credit_card_rounded,),
                      SizedBox(width: AppSize.s10,),
                      Text('Save your money securely \nwith LankaBangla Finance Ltd.',
                      style: TextStyle(fontSize: AppSize.textXMedium),),
                    
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.s6,
                ),
                Padding(
                  padding:  EdgeInsets.all(AppSize.s20),
                  child: Row(
                    
                    children: [
                    
                      Icon(Icons.emoji_emotions_rounded,),
                      SizedBox(width: AppSize.s10,),
                      Text('No Setup or, hidden fees.',
                        style: TextStyle(fontSize: AppSize.textXMedium),),
                    
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.s6,
                ),
                Padding(
                  padding:  EdgeInsets.all(AppSize.s20),
                  child: Row(
                    
                    children: [
                    
                      Icon(Icons.local_fire_department,),
                      SizedBox(width: AppSize.s10,),
                      Text('Interest: 10%',
                        style: TextStyle(fontSize: AppSize.textXMedium),),
                    
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.s6,
                ),
                Padding(
                  padding:  EdgeInsets.all(AppSize.s20),
                  child: Row(
                    
                    children: [
                    
                      Icon(Icons.shield,),
                      SizedBox(width: AppSize.s10,),
                      Text('Installment:${dpsSavingController.selectedAmount.value}/month',
                        style: TextStyle(fontSize: AppSize.textXMedium),),
                    
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.s6,
                ),
                Padding(
                  padding:  EdgeInsets.all(AppSize.s20),
                  child: Row(
                    
                    children: [
                    
                      Icon(Icons.airplanemode_on,),
                      SizedBox(width: AppSize.s10,),
                      Text('Tenure: ${dpsSavingController.selectedTenure.value}.',
                        style: TextStyle(fontSize: AppSize.textXMedium),),
                    
                    ],
                  ),
                ),
                SizedBox(height: AppSize.s10,),
                Container(width: Get.width/1.5,
                  child: ElevatedButton(onPressed: (){
                    Get.toNamed(AppPages.NOMINEEPERSONAL);
                  }, child: Text(
                    'Apply Now'
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryAppColor),),
                )
                    
              ],
            ),
          ),
        ),
      ),

    );
  }


}
