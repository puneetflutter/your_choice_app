// To parse this JSON data, do
//
//     final adminSupportDetails = adminSupportDetailsFromJson(jsonString);

import 'dart:convert';

AdminSupportDetails adminSupportDetailsFromJson(String str) => AdminSupportDetails.fromJson(json.decode(str));

String adminSupportDetailsToJson(AdminSupportDetails data) => json.encode(data.toJson());

class AdminSupportDetails {
    bool status;
    String message;
    AdminSupportDetailData data;

    AdminSupportDetails({
        required this.status,
        required this.message,
        required this.data,
    });

    factory AdminSupportDetails.fromJson(Map<String, dynamic> json) => AdminSupportDetails(
        status: json["status"],
        message: json["message"],
        data: AdminSupportDetailData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class AdminSupportDetailData {
    String whatsappNumber;
    List<String> email;
    String locations;
    String shareapplink;

    AdminSupportDetailData({
        required this.whatsappNumber,
        required this.email,
        required this.locations,
        required this.shareapplink,
    });

    factory AdminSupportDetailData.fromJson(Map<String, dynamic> json) => AdminSupportDetailData(
        whatsappNumber: json["whatsapp_number"],
        email: List<String>.from(json["email"].map((x) => x)),
        locations: json["locations"],
        shareapplink: json["shareapplink"],
    );

    Map<String, dynamic> toJson() => {
        "whatsapp_number": whatsappNumber,
        "email": List<dynamic>.from(email.map((x) => x)),
        "locations": locations,
        "shareapplink": shareapplink,
    };
}
