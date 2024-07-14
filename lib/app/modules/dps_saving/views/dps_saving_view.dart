import 'package:dana_nagad/app/modules/dps_saving/controllers/dps_saving_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DpsSavingView extends GetView<DpsSavingController> {
  const DpsSavingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('DPS Savings'),
        backgroundColor: AppColor.primaryAppColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tenure',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSize.textMedium,
              ),
            ),
            SizedBox(height: AppSize.s6),
            Obx(() {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.colorGray, // Border color
                    width: 1.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                ),
                child: DropdownButtonHideUnderline( // Hide the default underline
                  child: DropdownButton<String>(
                    value: controller.selectedTenure.value,
                    items: controller.tenureOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      controller.selectedTenure.value = newValue!;
                    },
                    isExpanded: true,
                    hint: Text("Select Type of identification"),
                  ),
                ),
              );
            }),
            SizedBox(
              height: AppSize.s16,
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deposit Frequency',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.textMedium,
                  ),
                ),
                SizedBox(height: AppSize.s6),
                Obx(() {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.colorGray, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                    child: DropdownButtonHideUnderline( // Hide the default underline
                      child: DropdownButton<String>(
                        value: controller.selectedFrequency.value,
                        items: controller.frequencyOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.selectedFrequency.value = newValue!;
                        },
                        isExpanded: true,
                        hint: Text("Select Type of identification"),
                      ),
                    ),
                  );
                }),
                SizedBox()
              ],

            ),
            SizedBox(height: AppSize.s16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Amount',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.textMedium,
                  ),
                ),
                SizedBox(height: AppSize.s6),
                Obx(() {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.colorGray, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                    child: DropdownButtonHideUnderline( // Hide the default underline
                      child: DropdownButton<String>(
                        value: controller.selectedAmount.value,
                        items: controller.amountOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.selectedAmount.value = newValue!;
                        },
                        isExpanded: true,
                        hint: Text("Select Type of identification"),
                      ),
                    ),
                  );
                }),
                SizedBox()
              ],

            ),
            SizedBox(
              height: AppSize.s16,
            ),
            Text('Purpose *',
                style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppSize.textMedium,
            )),
            SizedBox(height: AppSize.s6,),
            TextField(
              controller: controller.purposeController,
              decoration: InputDecoration(
                hintText: 'Write Your Purpose',
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
            SizedBox(
              height: AppSize.s16,
            ),
            Text('Tax Return *',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.textMedium,
                  color: AppColor.colorFerrariRed
                )),
            SizedBox(height: AppSize.s6,),
            TextField(
              controller: controller.purposeController,
              decoration: InputDecoration(
                hintText: 'Provide Your tax return if any',
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
            SizedBox(height: AppSize.s10,),
            Text('*** if you submitted your proof of submission of tax return to institution,'
                'Advance Income Tax(AIT) will be 10% of interest /Profit amount during maturity, otherwise the AIT will be 15 %.',
            style: TextStyle(color: AppColor.colorGray,
            fontSize: AppSize.textSmall),),
            SizedBox(height: AppSize.s32,),
            Center(
              child: ElevatedButton(onPressed: (){
                Get.toNamed(AppPages.SCHEME);
              }, child: Text(
                'Proceed',

              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryAppColor
              ),),
            )


          ],
        ),
      ),
    );
  }
}
