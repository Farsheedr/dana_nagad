import 'package:dana_nagad/app/modules/nominee_information/controllers/nominee_information_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class NomineeView extends GetView<NomineeController> {
  const NomineeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Nominee Information'),
          backgroundColor: AppColor.primaryAppColor,),
          body: Padding(
            padding: EdgeInsets.all(AppSize.s32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: AppSize.textMedium),
                ),
                SizedBox(height: AppSize.s6),
                DropdownSearch<String>(
                  popupProps: PopupProps.menu(
                    showSearchBox: false,
                    showSelectedItems: true,
                  ),
                  items: ['NID','Passport','Birth Certificate','Driving License'],
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      labelText: 'Type',
                      filled: true,
                      fillColor: AppColor.colorWhite,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.colorGray.withOpacity(0.2),
                        width: AppSize.s2)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.primaryAppColor.withOpacity(0.6)
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
                  onChanged: (String? value){
                    if(value != null)
                      controller.idType.value= value;
                  },

                ),
                // Obx(() {
                //   return Container(
                //     padding: EdgeInsets.symmetric(horizontal: AppSize.s12, vertical: AppSize.s6),
                //     decoration: BoxDecoration(
                //       border: Border.all(
                //         color: AppColor.colorGray, // Border color
                //         width: AppSize.s2, // Border width
                //       ),
                //       borderRadius: BorderRadius.circular(8.0), // Border radius
                //     ),
                //     child: DropdownButtonHideUnderline( // Hide the default underline
                //       child: DropdownButton<String>(
                //
                //         value: controller.selectedType.value,
                //         items: controller.typeOptions.map((String value) {
                //           return DropdownMenuItem<String>(
                //             value: value,
                //             child: Text(value),
                //           );
                //         }).toList(),
                //         onChanged: (newValue) {
                //           controller.selectedType.value = newValue!;
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
                Text('Identification No. *',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: AppSize.textMedium),),
                SizedBox(height: AppSize.s6,),
                TextField(
                  controller: controller.nomineeIdController,
                  decoration: InputDecoration(
                    hintText: 'Provide Your Identification Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.colorGray.withOpacity(0.3), // border color
                        width: AppSize.s2 // border width
                      ),
                      borderRadius: BorderRadius.circular(AppSize.s8), // border radius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.primaryAppColor.withOpacity(0.6), // focused border color
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
                SizedBox(height: AppSize.s16,),

                Text('Relationship',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: AppSize.s6),
                DropdownSearch<String>(
                  popupProps: PopupProps.menu(
                    showSearchBox: false,
                    showSelectedItems: true,
                  ),
                  items:[],
                  dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                          labelText: 'Relationship',
                          filled: true,
                          fillColor: AppColor.colorWhite,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.colorGray.withOpacity(0.2),
                                  width: AppSize.s2)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.primaryAppColor.withOpacity(0.6)
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
                //         width: AppSize.s2 // Border width
                //       ),
                //       borderRadius: BorderRadius.circular(8.0), // Border radius
                //     ),
                //     child: DropdownButtonHideUnderline( // Hide the default underline
                //       child: DropdownButton<String>(
                //         value: controller.selectedRelationship.value,
                //         items: controller.relationshipOptions.map((String value) {
                //           return DropdownMenuItem<String>(
                //             value: value,
                //             child: Text(value),
                //           );
                //         }).toList(),
                //         onChanged: (newValue) {
                //           controller.selectedRelationship.value = newValue!;
                //         },
                //         isExpanded: true,
                //         hint: Text("Select Type of relationship"),
                //       ),
                //     ),
                //   );
                // }),
                SizedBox(height: AppSize.s16,),
                Text('Date of Birth. *',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: AppSize.s6,),
                TextField(
                  controller: controller.dateController,
                  decoration: InputDecoration(
                    hintText: 'dd/mm/yyyy',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:AppColor.colorGray, // border color
                        width: AppSize.s2, // border width
                      ),
                      borderRadius: BorderRadius.circular(AppSize.s8), // border radius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.primaryAppColor.withOpacity(0.3), // focused border color
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
                SizedBox(
                  height: AppSize.s50,
                ),
                
                Center
                  (child: ElevatedButton(
                    onPressed: (){
                      Get.toNamed(AppPages.OVERVIEW);
                    },
                    child:
                    Text('Proceed'),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryAppColor),
                ))

              ],

            ),
        
    ),


      );

  }


}
