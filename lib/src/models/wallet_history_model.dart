// To parse this JSON data, do
//
//     final walletHistoryModel = walletHistoryModelFromJson(jsonString);

import 'dart:convert';

WalletHistoryModel walletHistoryModelFromJson(String str) => WalletHistoryModel.fromJson(json.decode(str));

String walletHistoryModelToJson(WalletHistoryModel data) => json.encode(data.toJson());

class WalletHistoryModel {
    bool status;
    dynamic totalCredit;
    dynamic totalDebit;
    String message;
    List<WalletTransactionsData> data;

    WalletHistoryModel({
        required this.status,
        required this.totalCredit,
        required this.totalDebit,
        required this.message,
        required this.data,
    });

    factory WalletHistoryModel.fromJson(Map<String, dynamic> json) => WalletHistoryModel(
        status: json["status"],
        totalCredit: json["totalCredit"],
        totalDebit: json["totalDebit"],
        message: json["message"],
        data: List<WalletTransactionsData>.from(json["data"].map((x) => WalletTransactionsData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "totalCredit": totalCredit,
        "totalDebit": totalDebit,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class WalletTransactionsData {
    int id;
    String userId;
    String? orderNo;
    String amount;
    String? currency;
    String? beneficiaryId;
    String status;
    String? txstatus;
    String? txmsg;
    String? txnid;
    String? txnpaymode;
    DateTime createdAt;
    DateTime updatedAt;
    String flag;
    String creditAmount;
    String debitAmount;
    String remarks;
    Users users;
    Beneficiary? beneficiary;

    WalletTransactionsData({
        required this.id,
        required this.userId,
        this.orderNo,
        required this.amount,
        this.currency,
        this.beneficiaryId,
        required this.status,
        this.txstatus,
        this.txmsg,
        this.txnid,
        this.txnpaymode,
        required this.createdAt,
        required this.updatedAt,
        required this.flag,
        required this.creditAmount,
        required this.debitAmount,
        required this.remarks,
        required this.users,
        this.beneficiary,
    });

    factory WalletTransactionsData.fromJson(Map<String, dynamic> json) => WalletTransactionsData(
        id: json["id"],
        userId: json["user_id"],
        orderNo: json["order_no"],
        amount: json["amount"],
        currency: json["currency"],
        beneficiaryId: json["beneficiary_id"],
        status: json["status"],
        txstatus: json["txstatus"],
        txmsg: json["txmsg"],
        txnid: json["txnid"],
        txnpaymode: json["txnpaymode"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        flag: json["flag"],
        creditAmount: json["credit_amount"],
        debitAmount: json["debit_amount"],
        remarks: json["remarks"],
        users: Users.fromJson(json["users"]),
        beneficiary: json["beneficiary"] == null ? null : Beneficiary.fromJson(json["beneficiary"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "order_no": orderNo,
        "amount": amount,
        "currency": currency,
        "beneficiary_id": beneficiaryId,
        "status": status,
        "txstatus": txstatus,
        "txmsg": txmsg,
        "txnid": txnid,
        "txnpaymode": txnpaymode,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "flag": flag,
        "credit_amount": creditAmount,
        "debit_amount": debitAmount,
        "remarks": remarks,
        "users": users.toJson(),
        "beneficiary": beneficiary?.toJson(),
    };
}

class Beneficiary {
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

    Beneficiary({
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

    factory Beneficiary.fromJson(Map<String, dynamic> json) => Beneficiary(
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
    String address;
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
    String pg;
    String payoutType;
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
        required this.roleId,
        required this.name,
        required this.email,
        required this.mobile,
        required this.address,
        required this.companyName,
        required this.aadharNo,
        required this.dateOfBirth,
        required this.profileImage,
        required this.otp,
        required this.otpExpiry,
        required this.isUserVerified,
        required this.userType,
        required this.payoutEnable,
        required this.accessToken,
        required this.pg,
        required this.payoutType,
        required this.status,
        required this.createdBy,
        required this.createdAt,
        required this.updatedBy,
        required this.updatedAt,
        required this.isDeleted,
        required this.deletedBy,
        required this.deletedAt,
    });

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        roleId: json["role_id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        address: json["address"],
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
        "address": address,
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
