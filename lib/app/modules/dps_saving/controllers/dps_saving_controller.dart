
import 'package:dana_nagad/app/data/preference_data/remote_services.dart';
import 'package:dana_nagad/app/modules/dps_saving/models/all_dps_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/preference_data/local_preference.dart';
import '../models/all_dps_products.dart';
import '../models/all_dps_products.dart';
import '../models/all_dps_products.dart';

class DpsSavingController extends GetxController {
  final localPreferences = Get.put(LocalPreferences());
  RxBool isLoading = false.obs;
RxString selectedTenure = '6 months'.obs;
RxString selectedFrequency = 'Monthly'.obs;
RxString selectedAmount = '5000'.obs;
RxBool isTermAccepted = false.obs;
final TextEditingController purposeController = TextEditingController();
final TextEditingController taxReturnController = TextEditingController();

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
 var productList = <Body>[].obs;
 var tenureList = <String>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    getAllDpsProducts();
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

  void getAllDpsProducts() async {
    print("==================== getAllDpsProducts =======================");
    isLoading.value = true;
    try {
      await RemoteServices.getAllDpsProducts().then((value) {

        productList.value = value.body;




        tenureList.value = productList.map((product) => product.tenure).toList();

        isLoading.value = false;

      }).catchError((error) {
        print("getAllDpsProductsList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getAllDpsProductsList error: $error');
      isLoading.value = false;
    }
  }
}



