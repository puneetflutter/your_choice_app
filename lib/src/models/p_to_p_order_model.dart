// To parse this JSON data, do
//
//     final ptoPOrderModel = ptoPOrderModelFromJson(jsonString);

import 'dart:convert';

PtoPOrderModel ptoPOrderModelFromJson(String str) =>
    PtoPOrderModel.fromJson(json.decode(str));

String ptoPOrderModelToJson(PtoPOrderModel data) => json.encode(data.toJson());

class PtoPOrderModel {
  bool status;
  String message;
  PtoPModelData data;

  PtoPOrderModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PtoPOrderModel.fromJson(Map<String, dynamic> json) => PtoPOrderModel(
        status: json["status"],
        message: json["message"],
        data: PtoPModelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class PtoPModelData {
  int userId;
  String subTotal;
  int amount;
  String notes;
  String customerName;
  String customerPhone;
  String customerEmail;
  int serviceCharge;
  String fundTransferFee;
  String serviceName;
  int refId;
  String orderNo;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  PtoPModelData({
    required this.userId,
    required this.subTotal,
    required this.amount,
    required this.notes,
    required this.customerName,
    required this.customerPhone,
    required this.customerEmail,
    required this.serviceCharge,
    required this.fundTransferFee,
    required this.serviceName,
    required this.refId,
    required this.orderNo,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory PtoPModelData.fromJson(Map<String, dynamic> json) => PtoPModelData(
        userId: json["user_id"],
        subTotal: json["sub_total"],
        amount: json["amount"],
        notes: json["notes"],
        customerName: json["customer_name"],
        customerPhone: json["customer_phone"],
        customerEmail: json["customer_email"],
        serviceCharge: json["service_charge"],
        fundTransferFee: json["fund_transfer_fee"],
        serviceName: json["service_name"],
        refId: json["ref_id"],
        orderNo: json["order_no"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "sub_total": subTotal,
        "amount": amount,
        "notes": notes,
        "customer_name": customerName,
        "customer_phone": customerPhone,
        "customer_email": customerEmail,
        "service_charge": serviceCharge,
        "fund_transfer_fee": fundTransferFee,
        "service_name": serviceName,
        "ref_id": refId,
        "order_no": orderNo,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
