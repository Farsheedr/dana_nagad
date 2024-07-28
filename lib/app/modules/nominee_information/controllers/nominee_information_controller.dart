import 'dart:io';

import 'package:dana_nagad/app/data/preference_data/remote_services.dart';
import 'package:dana_nagad/app/modules/nominee_information/models/relation_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/negative_snackbar.dart';
import '../../../widgets/positive_snackbar.dart';

class NomineeController extends GetxController {
  RxString selectedType = 'NID'.obs;
  RxString selectedRelationship = 'Husband/Wife'.obs;
  final TextEditingController nomineeIdController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nomineeNameController = TextEditingController();
  final TextEditingController nomineeFatherController = TextEditingController();
  final TextEditingController nomineeMotherController = TextEditingController();
  final TextEditingController nomineeSpouseController = TextEditingController();
  final TextEditingController presentAddressController = TextEditingController();
  final TextEditingController permanentAddressController = TextEditingController();
  var nomineeName = "".obs;
  var nomineeFather = "".obs;
  var nomineeMother = "".obs;
  var nomineeSpouse = "".obs;
  var nomineePermanentAddress = "".obs;
  var nomineePresentAddress = "".obs;

  var idType = "".obs;






  RxBool isLoading = true.obs;
  var productData = GetRelationList.empty().obs;
  var relations = <GetRelationList>[].obs;
  var selectedRelation = Rxn<GetRelationList>;


  final List<String> typeOptions = [
  'NID',
  'Passport',
  'Birth Certificate',
  ].obs;
  final List<String> relationshipOptions = [
    'Husband/Wife',
    'Child'
  ];


  final count = 0.obs;
  @override
  void onInit() {

    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

 void nomineeRegistration() async{
   print('===========nomineeRegistration=======');

   var reqBody = {
     "nominee_name ": nomineeName.value,
     "nominee_father": nomineeFather.value,
     "nominee_mother": nomineeMother.value,
     "nominee_spouse": nomineeSpouse.value,


   };
   try {
     isLoading.value = true;
     await RemoteServices.nomineeRegistration(reqBody).then((value) {
       print("value====>>> $value");
       if(value.contains("successfully")){
         snackbarPositive("Successfully Registration");
         Get.toNamed(AppPages.OVERVIEW);
       } else {
         negativeSnackbar(message:value);
       }
     }).catchError((error) {
       isLoading.value = false;
       print("nomineeRegistration " + error.toString());
     });
   } on HttpException catch (error) {
     isLoading.value = false;
     print('nomineeRegistration error: $error');
   } finally {
     isLoading.value = false;
   }
 }
 }

