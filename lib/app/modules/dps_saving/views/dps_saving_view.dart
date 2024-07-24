import 'package:dana_nagad/app/modules/dps_saving/controllers/dps_saving_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tenure',
                      style: TextStyle(
                        fontSize: AppSize.textMedium,
                        fontWeight: FontWeight.bold,
                        color: AppColor.colorBlack,
                      ),
                    ),
                    SizedBox(height: AppSize.s8),
                    DropdownSearch<String>(// Package that creates dropdown
                      popupProps: PopupProps.menu(
                        showSearchBox: false,
                        showSelectedItems: true,
                      ),
                      items: controller.tenureList,
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          labelText: 'Tenure',
                          filled: true,
                          fillColor: AppColor.colorWhite,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.colorGray.withOpacity(0.2),
                              width: AppSize.s2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.primaryAppColor.withOpacity(0.6),
                              width: AppSize.s2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.colorGray.withOpacity(0.3),
                              width: AppSize.s2,
                            ),
                          ),
                        ),
                      ),


                    ),
                  ],
                ),
              ),
              // Text(
              //   'Tenure',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: AppSize.textMedium,
              //   ),
              // ),
              // SizedBox(height: AppSize.s6),
              // Obx(() {
              //   return Container(
              //     padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
              //     decoration: BoxDecoration(
              //       border: Border.all(
              //         color: AppColor.colorGray, // Border color
              //         width: 1.0, // Border width
              //       ),
              //       borderRadius: BorderRadius.circular(8.0), // Border radius
              //     ),
              //     child: DropdownButtonHideUnderline( // Hide the default underline
              //       child: DropdownButton<String>(
              //         value: controller.selectedTenure.value,
              //         items: controller.tenureOptions.map((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(value),
              //           );
              //         }).toList(),
              //         onChanged: (newValue) {
              //           controller.selectedTenure.value = newValue!;
              //         },
              //         isExpanded: true,
              //         hint: Text("Select Type of identification"),
              //       ),
              //     ),
              //   );
              // }),
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

                  DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSearchBox: false,
                      showSelectedItems: true,
                    ),
                    items: ['Monthly', 'Half-Yearly', 'Yearly'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: 'Deposit Frequency',
                        filled: true,
                        fillColor: AppColor.colorWhite,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.colorGray.withOpacity(0.2),
                            width: AppSize.s2,
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.primaryAppColor.withOpacity(0.6),
                            width: AppSize.s2,
                          )
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.colorWhite.withOpacity(0.3),
                            width: AppSize.s2
                          )
                        )
                      )
                    ),

                  ),
                  // Obx(() {
                  //   return Container(
                  //     padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
                  //     decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: AppColor.colorGray, // Border color
                  //         width: 1.0, // Border width
                  //       ),
                  //       borderRadius: BorderRadius.circular(8.0), // Border radius
                  //     ),
                  //     child: DropdownButtonHideUnderline( // Hide the default underline
                  //       child: DropdownButton<String>(
                  //         value: controller.selectedFrequency.value,
                  //         items: controller.frequencyOptions.map((String value) {
                  //           return DropdownMenuItem<String>(
                  //             value: value,
                  //             child: Text(value),
                  //           );
                  //         }).toList(),
                  //         onChanged: (newValue) {
                  //           controller.selectedFrequency.value = newValue!;
                  //         },
                  //         isExpanded: true,
                  //         hint: Text("Select Type of identification"),
                  //       ),
                  //     ),
                  //   );
                  // }),
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
                  DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSearchBox: false,
                      showSelectedItems: true,
                    ),
                    items: ['500','1000','2000','5000'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: 'Amount',
                        filled: true,
                        fillColor: AppColor.colorWhite,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.colorGray.withOpacity(0.2),
                            width: AppSize.s2

                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.primaryAppColor.withOpacity(0.6),
                            width: AppSize.s2
                          )
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.colorWhite.withOpacity(0.3),
                            width: AppSize.s2
                          )
                        )

                      )
                    ),
                  ),
                  // Obx(() {
                  //   return Container(
                  //     padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
                  //     decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: AppColor.colorGray, // Border color
                  //         width: 1.0, // Border width
                  //       ),
                  //       borderRadius: BorderRadius.circular(8.0), // Border radius
                  //     ),
                  //     child: DropdownButtonHideUnderline( // Hide the default underline
                  //       child: DropdownButton<String>(
                  //         value: controller.selectedAmount.value,
                  //         items: controller.amountOptions.map((String value) {
                  //           return DropdownMenuItem<String>(
                  //             value: value,
                  //             child: Text(value),
                  //           );
                  //         }).toList(),
                  //         onChanged: (newValue) {
                  //           controller.selectedAmount.value = newValue!;
                  //         },
                  //         isExpanded: true,
                  //         hint: Text("Select Type of identification"),
                  //       ),
                  //     ),
                  //   );
                  // }),
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
                      color: AppColor.colorGray, // border color
                      width:AppSize.s2, // border width
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s8), // border radius
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorWhite.withOpacity(0.3), // focused border color
                      width: 1.0, // focused border width
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s8), // focused border radius
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: AppColor.primaryAppColor.withOpacity(0.6),
                      width: AppSize.s2
                    )

                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s16),
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
                controller: controller.taxReturnController,
                decoration: InputDecoration(
                  hintText: 'Provide Your tax return if any',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorWhite.withOpacity(0.3), // border color
                      width: AppSize.s2, // border width
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s8), // border radius
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorGray.withOpacity(0.2), // focused border color
                      width: AppSize.s2, // focused border width
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s8), // focused border radius
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.primaryAppColor.withOpacity(0.6),
                      width: AppSize.s2
                    )
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s16),
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
      ),
    );
  }
}
