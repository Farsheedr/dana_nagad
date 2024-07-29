import 'package:dana_nagad/app/modules/nominee_information/controllers/nominee_information_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NomineePersonalView extends GetView<NomineeController> {
  const NomineePersonalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Allow the page to resize when the keyboard is open
      appBar: AppBar(
        title: Text('Nominee Information'),
        backgroundColor: AppColor.primaryAppColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s32),
        child: SingleChildScrollView(
          // Wrap the Column with SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nominee Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppSize.s4),
              TextFormField(
                controller: controller.nomineeNameController,
                decoration: InputDecoration(
                  hintText: "Nominee Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorGray, // border color
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
                      width: AppSize.s2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s16),
                ),
                onChanged: (String? value) {
                  if (value != null)
                    controller.nomineeName.value = value;
                },
              ),
              SizedBox(height: AppSize.s10),
              Text(
                "Father's Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppSize.s4),
              TextField(
                controller: controller.nomineeFatherController,
                decoration: InputDecoration(
                  hintText: "Father Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorGray, // border color
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
                      width: AppSize.s2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s16),
                ),
                onChanged: (String? value) {
                  if (value != null)
                    controller.nomineeFather.value = value;
                },
              ),
              SizedBox(height: AppSize.s10),
              Text(
                "Mother's Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSize.s4),
              TextField(
                controller: controller.nomineeMotherController,
                decoration: InputDecoration(
                  hintText: "Mother's Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorGray,
                      width: AppSize.s2,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.primaryAppColor,
                      width: AppSize.s2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.primaryAppColor.withOpacity(0.6),
                      width: AppSize.s2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s16),
                ),
                onChanged: (String? value) {
                  if (value != null)
                    controller.nomineeMother.value = value;
                },
              ),
              SizedBox(height: AppSize.s10),
              Text(
                "Spouse's Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSize.s4),
              TextField(
                controller: controller.nomineeSpouseController,
                decoration: InputDecoration(
                  hintText: "Spouse's Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.colorGray,
                      width: AppSize.s2,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.primaryAppColor.withOpacity(0.6),
                      width: AppSize.s2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.primaryAppColor.withOpacity(0.6),
                      width: AppSize.s2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s16),
                ),
                onChanged: (String? value) {
                  if (value != null)
                    controller.nomineeSpouse.value = value;
                },
              ),
              SizedBox(height: AppSize.s10),
              Text(
                'Present Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: controller.presentAddressController,
                onChanged: (String? value) {
                  if (value != null) controller.nomineePresentAddress.value = value;
                },
              ),
              SizedBox(
                height: AppSize.s10,
              ),
              Text(
                'Permanent Address',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: controller.permanentAddressController,
                onChanged: (String? value) {
                  if (value != null)
                    controller.nomineePermanentAddress.value = value;
                },
              ),
              SizedBox(height: AppSize.s75),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppPages.NOMINEE);
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryAppColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
