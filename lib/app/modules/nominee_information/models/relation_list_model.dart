// To parse this JSON data, do
//
//     final getRelationList = getRelationListFromJson(jsonString);

import 'dart:convert';

List<GetRelationList> getRelationListFromJson(String str) => List<GetRelationList>.from(json.decode(str).map((x) => GetRelationList.fromJson(x)));

String getRelationListToJson(List<GetRelationList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetRelationList {
  String name;
  String nameBn;
  int sortOrder;
  int id;
  int isDelete;
  String createdAt;
  String updatedAt;
  String createdBy;
  String updatedBy;

  GetRelationList({
    required this.name,
    required this.nameBn,
    required this.sortOrder,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  // factory GetRelationList.empty() =>
  // GetRelationList(name: "", nameBn: "", sortOrder: 0, id: 0, isDelete: 0, createdAt: "", updatedAt: "", createdBy: "", updatedBy: "");

  factory GetRelationList.fromJson(Map<String, dynamic> json) => GetRelationList(
    name: json["name"]??"",
    nameBn: json["nameBn"]??"",
    sortOrder: json["sortOrder"]??0,
    id: json["Id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: json["createdAt"]??"",
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "nameBn": nameBn,
    "sortOrder": sortOrder,
    "Id": id,
    "isDelete": isDelete,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
