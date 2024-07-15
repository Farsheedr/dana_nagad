import 'dart:async';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalPreferences extends GetxController with GetSingleTickerProviderStateMixin{

  Future<void> initStorage() async{
    await GetStorage.init();
  }

final token = ''.val('jwt');
final loginUser = ''.val('username');
final loginPassword = ''.val('password');
final nid = ''.val('nid');
final phone = ''.val('phone');
final userName = ''.val('name');
final userGender = ''.val('gender');
final userEmail = ''.val('email');

}

