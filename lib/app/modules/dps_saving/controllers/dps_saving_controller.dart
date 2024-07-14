import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DpsSavingController extends GetxController {
RxString selectedTenure = '6 months'.obs;
RxString selectedFrequency = 'Monthly'.obs;
RxString selectedAmount = '5000'.obs;
RxBool isTermAccepted = false.obs;
final TextEditingController purposeController = TextEditingController();
final List<String> tenureOptions = [
  '6 months',
  '12 months',
  '18 months',



].obs;
final List<String> frequencyOptions = [
  'Monthly',
  'Bi-Monthly',
  'Half-Yearly',
  'Yearly'
].obs;
final List<String> amountOptions = [
  '1000',
  '5000',
  '10000',
  '20000',

].obs;

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
