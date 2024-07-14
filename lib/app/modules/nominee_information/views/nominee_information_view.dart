import 'package:dana_nagad/app/modules/nominee_information/controllers/nominee_information_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                        value: controller.selectedType.value,
                        items: controller.typeOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.selectedType.value = newValue!;
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
                Text('Identification No. *',
                style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: AppSize.s6,),
                TextField(
                  controller: controller.identityController,
                  decoration: InputDecoration(
                    hintText: 'Provide Your Identification Number',
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
                SizedBox(height: AppSize.s16,),
                Text('Relationship',
                    style: TextStyle(fontWeight: FontWeight.bold)),
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
                        value: controller.selectedRelationship.value,
                        items: controller.relationshipOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.selectedRelationship.value = newValue!;
                        },
                        isExpanded: true,
                        hint: Text("Select Type of relationship"),
                      ),
                    ),
                  );
                }),
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
