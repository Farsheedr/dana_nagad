import 'dart:convert';
import 'dart:io';

import 'package:dana_nagad/app/modules/dps_saving/models/all_dps_products.dart';
import 'package:dana_nagad/app/modules/nominee_information/models/create_dps_account_model.dart';
import 'package:dana_nagad/app/modules/nominee_information/models/relation_list_model.dart';
import 'package:get/get.dart';

import '../../modules/nominee_information/models/create_dps_account_model.dart';
import '../../modules/nominee_information/models/create_dps_account_model.dart';
import '../../modules/nominee_information/models/create_dps_account_model.dart';
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

  static Future<List<GetRelationList>> getRelationList() async{
    final url = AppApis.getRelationListApi;

    print('Token: ${localPreferences.token.val}');
    var response = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json', 'Authorization':'Bearer ${localPreferences.token.val}'},

    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200){
      return getRelationListFromJson(response.body);
    }else{
      throw HttpException('Something went wrong');
    }
  }

  static Future<String> nomineeRegistration(reqBody) async {
    final url = AppApis.createDPSAccountApi;
    var response = await client.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json', 'Authorization':'Bearer ${localPreferences.token.val}'},
      body: jsonEncode(reqBody),
    );
    print('Response Status Code : ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body)["message"];
    } else {
      throw const HttpException('Something went wrong!');
    }
  }



}