// To parse this JSON data, do
//
//     final profilelist = profilelistFromJson(jsonString);

import 'dart:convert';

ProfileModel profilelistFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profilelistToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  bool status;
  String message;
  ProfileData data;
  String walletAmount;
  String refferalAmount;

  ProfileModel({
    required this.status,
    required this.message,
    required this.data,
    required this.refferalAmount,
    required this.walletAmount,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        message: json["message"],
        refferalAmount: json["walletAmount"],
        walletAmount: json["referralAmount"],
        data: ProfileData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class ProfileData {
    int id;
    dynamic roleId;
    String name;
    String email;
    dynamic mobile;
    String companyName;
    dynamic aadharNo;
    DateTime dateOfBirth;
    dynamic profileImage;
    dynamic isUserVerified;
    dynamic userType;
    dynamic rememberToken;
    dynamic payoutEnable;
    String accessToken;
    dynamic pg;
    dynamic payoutType;
    dynamic status;

  ProfileData({
    required this.id,
    this.roleId,
    required this.name,
    required this.email,
    required this.mobile,
    required this.companyName,
    required this.aadharNo,
    required this.dateOfBirth,
    this.profileImage,
    required this.isUserVerified,
    required this.userType,
    this.rememberToken,
    this.payoutEnable,
    required this.accessToken,
    this.pg,
    this.payoutType,
    required this.status,
  });

    factory ProfileData.fromJson(Map<String, dynamic> json) => ProfileData(
        id: json["id"]??0,
        roleId: json["role_id"]??"",
        name: json["name"]??"",
        email: json["email"]??"",
        mobile: json["mobile"]??"",
        companyName: json["company_name"]??"",
        aadharNo: json["aadhar_no"]??"",
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        profileImage: json["profile_image"]??"",
        isUserVerified: json["isUserVerified"]??"",
        userType: json["user_type"]??"",
        rememberToken: json["remember_token"]??"",
        payoutEnable: json["payout_enable"]??"",
        accessToken: json["access_token"]??"",
        pg: json["pg"]??"",
        payoutType: json["payout_type"]??"",
        status: json["status"]??"",
    );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role_id": roleId,
        "name": name,
        "email": email,
        "mobile": mobile,
        "company_name": companyName,
        "aadhar_no": aadharNo,
        "date_of_birth": dateOfBirth.toIso8601String(),
        "profile_image": profileImage,
        "isUserVerified": isUserVerified,
        "user_type": userType,
        "remember_token": rememberToken,
        "payout_enable": payoutEnable,
        "access_token": accessToken,
        "pg": pg,
        "payout_type": payoutType,
        "status": status,
      };
}
