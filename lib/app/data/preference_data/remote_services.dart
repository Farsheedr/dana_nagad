import 'dart:io';

import 'package:dana_nagad/app/modules/dps_saving/models/all_dps_products.dart';
import 'package:get/get.dart';

import '../../utils/app_apis.dart';
import 'local_preference.dart';
import 'package:http/http.dart' as http;


class RemoteServices {
  static final localPreferences = Get.find<LocalPreferences>();
  static var client = http.Client();

  static Future<GetAllDpsProducts> getAllDpsProducts() async{
    final url = AppApis.getAllDpsProductsApi;
    print('Token: ${localPreferences.token.val}');
    var response = await  client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json', 'Authorization':'Bearer ${localPreferences.token.val}'},

    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200){
      return getAllDpsProductsFromJson(response.body);
    }else{
      throw HttpException('Something went wrong');
    }
  }

}