// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String jwt;
  String status;
  String message;
  String username;
  String nid;
  String phone;
  String name;
  String dateOfBirth;
  String gender;
  String email;
  String imagePath;
  int clientId;

  LoginResponse({
    required this.jwt,
    required this.status,
    required this.message,
    required this.username,
    required this.nid,
    required this.phone,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.email,
    required this.imagePath,
    required this.clientId,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    jwt: json["jwt"]??"",
    status: json["status"]??"",
    message: json["message"]??"",
    username: json["username"]??"",
    nid: json["nid"]??"",
    phone: json["phone"]??"",
    name: json["name"]??"",
    dateOfBirth: json["dateOfBirth"]??"",
    gender: json["gender"]??"",
    email: json["email"]??"",
    imagePath: json["imagePath"]??"",
    clientId: json["clientId"]??0,
  );

  Map<String, dynamic> toJson() => {
    "jwt": jwt,
    "status": status,
    "message": message,
    "username": username,
    "nid": nid,
    "phone": phone,
    "name": name,
    "dateOfBirth": dateOfBirth,
    "gender": gender,
    "email": email,
    "imagePath": imagePath,
    "clientId": clientId,
  };
}
