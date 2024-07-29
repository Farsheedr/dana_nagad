import 'dart:io';

import 'package:dana_nagad/app/data/preference_data/remote_services.dart';
import 'package:dana_nagad/app/modules/nominee_information/models/create_dps_account_model.dart';
import 'package:dana_nagad/app/modules/nominee_information/models/relation_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

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
  final TextEditingController eTinController = TextEditingController();
  final TextEditingController nomineeShareController = TextEditingController();


  var nomineeName = "".obs;
  var nomineeFather = "".obs;
  var nomineeMother = "".obs;
  var nomineeSpouse = "".obs;
  var nomineePermanentAddress = "".obs;
  var nomineePresentAddress = "".obs;
  var nomineeETin = "".obs;
  var nomineeDOB = "yyyy-MM-ddTHH:mm:ssZ".obs;
  var nomineePassport="".obs;
  var nomineeNID="".obs;
  var nomineeDrivingLinc="".obs;
  var nomineeBirthIdentity="".obs;
  var nomineeShare = 0.obs;
  var nidNo= "".obs;
  var productCode= "".obs;
  var accountTitle= "".obs;
  var fatherName= "".obs;
  var motherName= "".obs;
  var dateOfBirth= "yyyy-MM-ddTHH:mm:ssZ".obs;
  var gender= "".obs;
  var mobileNo= "".obs;
  var acHolderPhoto= "".obs;
  var email= "".obs;
  var dpsAmount= 0.obs;
  var accountTitleBn= "".obs;
  var eTinNo= "".obs;
  var eTinFile= "".obs;
  var taxReturnFile= "".obs;
  var photo = "".obs;
  var isMinor = false.obs;
  var reason = "".obs;
  // var guardianName = "".obs;
  // var guardianDateOfBirth = "".obs;
  // var guardianFather = "".obs;
  // var guardianMother = "".obs;
  // var guardianAddress = "".obs;
  // var guardianPhone = "".obs;
  // var relation = "".obs;










  var idType = "".obs;
  var selectedName = ''.obs;







  RxBool isLoading = true.obs;
  // var relationData = GetRelationList.empty().obs;
  // var relations = <GetRelationList>[].obs;
  // var selectedRelation = Rxn<GetRelationList>;


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
    getRelationList();

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
     "nidNo": nidNo.value,
     "productCode": productCode.value,
     "accountTitle": accountTitle.value,
     "fatherName": fatherName.value,
     "motherName": motherName.value,
     "dateOfBirth": dateOfBirth.value,
     "gender": gender.value,
     "mobileNo": mobileNo.value,
     "acHolderPhoto": acHolderPhoto.value,
     "email": email.value,
     "dpsAmount": dpsAmount.value,
     "reason": reason.value,
     "accountTitleBn": accountTitleBn.value,
     "eTinNo": eTinNo.value,
     "eTinFile": eTinFile.value,
     "taxReturnFile": taxReturnFile.value,
     "dpsNominees": [
       {
         "nomineeName": nomineeName.value,
         "nomineeFather": nomineeFather.value,
         "nomineeMother": nomineeMother.value,
         "nomineeSpouse": nomineeSpouse.value,
         "nomineePermanentAddress": nomineePermanentAddress.value,
         "nomineePresentAddress": nomineePresentAddress.value,
         "nomineeDOB":nomineeDOB.value,
         "nomineeETin": nomineeETin.value ,
         "nomineePassport": nomineePassport.value,
         "nomineeBirthIdentity": nomineeBirthIdentity.value,
         "nomineeDriveLinc": nomineeDrivingLinc.value,
         "nomineeShare": nomineeShare.value,
         "photo": photo.value,
         "nomineeNID": nomineeNID.value,
         "isMinor": false,
         // "legalGuardianInfo": {
         //   "guardianName": guardianName.value,
         //   "guardianDateOfBirth": guardianDateOfBirth.value,
         //   "guardianFather": guardianFather.value,
         //   "guardianMother": guardianMother.value,
         //   "guardianAddress": guardianAddress.value,
         //   "guardianPhone": guardianPhone.value,
         //   "relation": relation.value
         // }
       }
     ]
   };
   try {
     isLoading.value = true;
     await RemoteServices.nomineeRegistration(reqBody).then((value) {
       print("value====>>> $value");
       if(value.contains("successfully")){
         snackbarPositive("Successful Registration");
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

 var relationList = <GetRelationList>[].obs;
  void getRelationList() async {
    print("==================== getRelationList =======================");
    isLoading.value = true;
    try {
      await RemoteServices.getRelationList().then((value) {


        relationList.value = value;
        isLoading.value = false;

      }).catchError((error) {
        print("getRelationList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getRelationList error: $error');
      isLoading.value = false;
    }
  }
  void setSelectedName (String name){
    selectedName.value=name;
  }
   // void setDateOfBirth(DateTime date) {
   //   dateOfBirth.value = DateFormat('yyyy-MM-ddTHH:mm:ssZ').format(date);
   // }
   // void setNomineeDOB(DateTime date) {
   //   nomineeDOB.value = DateFormat('yyyy-MM-ddTHH:mm:ssZ').format(date);
   // }

}

