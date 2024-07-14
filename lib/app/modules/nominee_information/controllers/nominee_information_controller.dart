import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NomineeController extends GetxController {
  RxString selectedType = 'NID'.obs;
  RxString selectedRelationship = 'Husband/Wife'.obs;
  final TextEditingController identityController = TextEditingController();
  final TextEditingController dateController = TextEditingController();


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
}
