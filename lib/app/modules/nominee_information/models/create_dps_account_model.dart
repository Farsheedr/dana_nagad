// To parse this JSON data, do
//
//     final createDpsAccount = createDpsAccountFromJson(jsonString);

import 'dart:convert';

CreateDpsAccount createDpsAccountFromJson(String str) => CreateDpsAccount.fromJson(json.decode(str));

String createDpsAccountToJson(CreateDpsAccount data) => json.encode(data.toJson());

class CreateDpsAccount {
  String nidNo;
  String productCode;
  String accountTitle;
  String fatherName;
  String motherName;
  String dateOfBirth;
  String gender;
  String mobileNo;
  String acHolderPhoto;
  String email;
  int dpsAmount;
  String reason;
  String accountTitleBn;
  String eTinNo;
  String eTinFile;
  String taxReturnFile;
  List<DpsNominee> dpsNominees;

  CreateDpsAccount({
    required this.nidNo,
    required this.productCode,
    required this.accountTitle,
    required this.fatherName,
    required this.motherName,
    required this.dateOfBirth,
    required this.gender,
    required this.mobileNo,
    required this.acHolderPhoto,
    required this.email,
    required this.dpsAmount,
    required this.reason,
    required this.accountTitleBn,
    required this.eTinNo,
    required this.eTinFile,
    required this.taxReturnFile,
    required this.dpsNominees,
  });

  factory CreateDpsAccount.fromJson(Map<String, dynamic> json) => CreateDpsAccount(
    nidNo: json["nidNo"]??"",
    productCode: json["productCode"]??"",
    accountTitle: json["accountTitle"]??"",
    fatherName: json["fatherName"]??"",
    motherName: json["motherName"]??"",
    dateOfBirth: json["dateOfBirth"]??"",
    gender: json["gender"]??"",
    mobileNo: json["mobileNo"]??"",
    acHolderPhoto: json["acHolderPhoto"]??"",
    email: json["email"]??"",
    dpsAmount: json["dpsAmount"]??0,
    reason: json["reason"]??"",
    accountTitleBn: json["accountTitleBn"]??"",
    eTinNo: json["eTinNo"]??"",
    eTinFile: json["eTinFile"]??"",
    taxReturnFile: json["taxReturnFile"]??"",
    dpsNominees: List<DpsNominee>.from(json["dpsNominees"].map((x) => DpsNominee.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "nidNo": nidNo,
    "productCode": productCode,
    "accountTitle": accountTitle,
    "fatherName": fatherName,
    "motherName": motherName,
    "dateOfBirth": dateOfBirth,
    "gender": gender,
    "mobileNo": mobileNo,
    "acHolderPhoto": acHolderPhoto,
    "email": email,
    "dpsAmount": dpsAmount,
    "reason": reason,
    "accountTitleBn": accountTitleBn,
    "eTinNo": eTinNo,
    "eTinFile": eTinFile,
    "taxReturnFile": taxReturnFile,
    "dpsNominees": List<dynamic>.from(dpsNominees.map((x) => x.toJson())),
  };
}

class DpsNominee {
  String nomineeName;
  String nomineeFather;
  String nomineeMother;
  String nomineeSpouse;
  String nomineePermanentAddress;
  String nomineePresentAddress;
  String nomineeDob;
  String nomineeETin;
  String nomineePassport;
  String nomineeBirthIdentity;
  String nomineeDriveLinc;
  int nomineeShare;
  String photo;
  String nomineeNid;
  bool isMinor;
  LegalGuardianInfo legalGuardianInfo;

  DpsNominee({
    required this.nomineeName,
    required this.nomineeFather,
    required this.nomineeMother,
    required this.nomineeSpouse,
    required this.nomineePermanentAddress,
    required this.nomineePresentAddress,
    required this.nomineeDob,
    required this.nomineeETin,
    required this.nomineePassport,
    required this.nomineeBirthIdentity,
    required this.nomineeDriveLinc,
    required this.nomineeShare,
    required this.photo,
    required this.nomineeNid,
    required this.isMinor,
    required this.legalGuardianInfo,
  });

  factory DpsNominee.fromJson(Map<String, dynamic> json) => DpsNominee(
    nomineeName: json["nomineeName"]??"",
    nomineeFather: json["nomineeFather"]??"",
    nomineeMother: json["nomineeMother"]??"",
    nomineeSpouse: json["nomineeSpouse"]??"",
    nomineePermanentAddress: json["nomineePermanentAddress"]??"",
    nomineePresentAddress: json["nomineePresentAddress"]??"",
    nomineeDob: json["nomineeDOB"]??"",
    nomineeETin: json["nomineeETin"]??"",
    nomineePassport: json["nomineePassport"]??"",
    nomineeBirthIdentity: json["nomineeBirthIdentity"]??"",
    nomineeDriveLinc: json["nomineeDriveLinc"]??"",
    nomineeShare: json["nomineeShare"]??0,
    photo: json["photo"]??"",
    nomineeNid: json["nomineeNID"]??"",
    isMinor: json["isMinor"]??false,
    legalGuardianInfo: LegalGuardianInfo.fromJson(json["legalGuardianInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "nomineeName": nomineeName,
    "nomineeFather": nomineeFather,
    "nomineeMother": nomineeMother,
    "nomineeSpouse": nomineeSpouse,
    "nomineePermanentAddress": nomineePermanentAddress,
    "nomineePresentAddress": nomineePresentAddress,
    "nomineeDOB": nomineeDob,
    "nomineeETin": nomineeETin,
    "nomineePassport": nomineePassport,
    "nomineeBirthIdentity": nomineeBirthIdentity,
    "nomineeDriveLinc": nomineeDriveLinc,
    "nomineeShare": nomineeShare,
    "photo": photo,
    "nomineeNID": nomineeNid,
    "isMinor": isMinor,
    "legalGuardianInfo": legalGuardianInfo.toJson(),
  };
}

class LegalGuardianInfo {
  String guardianName;
  String guardianDateOfBirth;
  String guardianFather;
  String guardianMother;
  String guardianAddress;
  String guardianPhone;
  String relation;

  LegalGuardianInfo({
    required this.guardianName,
    required this.guardianDateOfBirth,
    required this.guardianFather,
    required this.guardianMother,
    required this.guardianAddress,
    required this.guardianPhone,
    required this.relation,
  });

  factory LegalGuardianInfo.fromJson(Map<String, dynamic> json) => LegalGuardianInfo(
    guardianName: json["guardianName"]??"",
    guardianDateOfBirth: json["guardianDateOfBirth"]??"",
    guardianFather: json["guardianFather"]??"",
    guardianMother: json["guardianMother"]??"",
    guardianAddress: json["guardianAddress"]??"",
    guardianPhone: json["guardianPhone"]??"",
    relation: json["relation"]??"",
  );

  Map<String, dynamic> toJson() => {
    "guardianName": guardianName,
    "guardianDateOfBirth": guardianDateOfBirth,
    "guardianFather": guardianFather,
    "guardianMother": guardianMother,
    "guardianAddress": guardianAddress,
    "guardianPhone": guardianPhone,
    "relation": relation,
  };
}
