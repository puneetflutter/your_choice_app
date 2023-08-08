// To parse this JSON data, do
//
//     final getpayModel = getpayModelFromJson(jsonString);

import 'dart:convert';

GetpayModel getpayModelFromJson(String str) => GetpayModel.fromJson(json.decode(str));

String getpayModelToJson(GetpayModel data) => json.encode(data.toJson());

class GetpayModel {
    bool status;
    String message;
    GetpayData data;

    GetpayModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory GetpayModel.fromJson(Map<String, dynamic> json) => GetpayModel(
        status: json["status"],
        message: json["message"],
        data: GetpayData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class GetpayData {
    dynamic currentPage;
    List<GetpaylistData> data;
    String firstPageUrl;
    dynamic from;
    dynamic lastPage;
    String lastPageUrl;
    dynamic nextPageUrl;
    String path;
    dynamic perPage;
    dynamic prevPageUrl;
    dynamic to;
    dynamic total;

    GetpayData({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        this.nextPageUrl,
        required this.path,
        required this.perPage,
        this.prevPageUrl,
        required this.to,
        required this.total,
    });

    factory GetpayData.fromJson(Map<String, dynamic> json) => GetpayData(
        currentPage: json["current_page"],
        data: List<GetpaylistData>.from(json["data"].map((x) => GetpaylistData.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        // links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        // "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class GetpaylistData {
    int id;
    String userId;
    String name;
    String contactNumber;
    String bankName;
    String bankIfscCode;
    String accountNumber;
    String serviceName;
    String activeFlag;
    DateTime createdAt;
    DateTime updatedAt;
    Users users;

    GetpaylistData({
        required this.id,
        required this.userId,
        required this.name,
        required this.contactNumber,
        required this.bankName,
        required this.bankIfscCode,
        required this.accountNumber,
        required this.serviceName,
        required this.activeFlag,
        required this.createdAt,
        required this.updatedAt,
        required this.users,
    });

    factory GetpaylistData.fromJson(Map<String, dynamic> json) => GetpaylistData(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        contactNumber: json["contact_number"],
        bankName: json["bank_name"],
        bankIfscCode: json["bank_ifsc_code"],
        accountNumber: json["account_number"],
        serviceName: json["service_name"],
        activeFlag: json["active_flag"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        users: Users.fromJson(json["users"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "contact_number": contactNumber,
        "bank_name": bankName,
        "bank_ifsc_code": bankIfscCode,
        "account_number": accountNumber,
        "service_name": serviceName,
        "active_flag": activeFlag,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "users": users.toJson(),
    };
}

class Users {
    int id;
    dynamic roleId;
    String name;
    String email;
    String mobile;
    String companyName;
    String aadharNo;
    DateTime dateOfBirth;
    dynamic profileImage;
    String otp;
    dynamic otpExpiry;
    String isUserVerified;
    String userType;
    dynamic payoutEnable;
    String accessToken;
    dynamic pg;
    dynamic payoutType;
    String status;
    dynamic createdBy;
    DateTime createdAt;
    dynamic updatedBy;
    DateTime updatedAt;
    String isDeleted;
    dynamic deletedBy;
    dynamic deletedAt;

    Users({
        required this.id,
        this.roleId,
        required this.name,
        required this.email,
        required this.mobile,
        required this.companyName,
        required this.aadharNo,
        required this.dateOfBirth,
        this.profileImage,
        required this.otp,
        this.otpExpiry,
        required this.isUserVerified,
        required this.userType,
        this.payoutEnable,
        required this.accessToken,
        this.pg,
        this.payoutType,
        required this.status,
        this.createdBy,
        required this.createdAt,
        this.updatedBy,
        required this.updatedAt,
        required this.isDeleted,
        this.deletedBy,
        this.deletedAt,
    });

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        roleId: json["role_id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        companyName: json["company_name"],
        aadharNo: json["aadhar_no"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        profileImage: json["profile_image"],
        otp: json["otp"],
        otpExpiry: json["otp_expiry"],
        isUserVerified: json["isUserVerified"],
        userType: json["user_type"],
        payoutEnable: json["payout_enable"],
        accessToken: json["access_token"],
        pg: json["pg"],
        payoutType: json["payout_type"],
        status: json["status"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedBy: json["updated_by"],
        updatedAt: DateTime.parse(json["updated_at"]),
        isDeleted: json["isDeleted"],
        deletedBy: json["deleted_by"],
        deletedAt: json["deleted_at"],
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
        "otp": otp,
        "otp_expiry": otpExpiry,
        "isUserVerified": isUserVerified,
        "user_type": userType,
        "payout_enable": payoutEnable,
        "access_token": accessToken,
        "pg": pg,
        "payout_type": payoutType,
        "status": status,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_by": updatedBy,
        "updated_at": updatedAt.toIso8601String(),
        "isDeleted": isDeleted,
        "deleted_by": deletedBy,
        "deleted_at": deletedAt,
    };
}

class Link {
    String? url;
    String label;
    bool active;

    Link({
        this.url,
        required this.label,
        required this.active,
    });

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
    };
}
