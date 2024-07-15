// To parse this JSON data, do
//
//     final getAllDpsProducts = getAllDpsProductsFromJson(jsonString);

import 'dart:convert';

GetAllDpsProducts getAllDpsProductsFromJson(String str) => GetAllDpsProducts.fromJson(json.decode(str));

String getAllDpsProductsToJson(GetAllDpsProducts data) => json.encode(data.toJson());

class GetAllDpsProducts {
  List<Body> body;
  String message;
  int statusCode;

  GetAllDpsProducts({
    required this.body,
    required this.message,
    required this.statusCode,
  });

  factory GetAllDpsProducts.fromJson(Map<String, dynamic> json) => GetAllDpsProducts(
    body: List<Body>.from(json["body"].map((x) => Body.fromJson(x))),
    message: json["message"],
    statusCode: json["statusCode"],
  );

  Map<String, dynamic> toJson() => {
    "body": List<dynamic>.from(body.map((x) => x.toJson())),
    "message": message,
    "statusCode": statusCode,
  };
}

class Body {
  String productCode;
  String productName;
  String tenure;
  int totalDuration;
  String type;
  int minAmount;
  int maxAmount;

  Body({
    required this.productCode,
    required this.productName,
    required this.tenure,
    required this.totalDuration,
    required this.type,
    required this.minAmount,
    required this.maxAmount,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    productCode: json["productCode"]??"",
    productName: json["productName"]??"",
    tenure: json["tenure"]??"",
    totalDuration: json["totalDuration"]??0,
    type: json["type"]??"",
    minAmount: json["minAmount"]??0,
    maxAmount: json["maxAmount"]??0,
  );

  Map<String, dynamic> toJson() => {
    "productCode": productCode,
    "productName": productName,
    "tenure": tenure,
    "totalDuration": totalDuration,
    "type": type,
    "minAmount": minAmount,
    "maxAmount": maxAmount,
  };
}
