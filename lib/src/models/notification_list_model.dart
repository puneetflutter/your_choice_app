// To parse this JSON data, do
//
//     final notificationListModel = notificationListModelFromJson(jsonString);

import 'dart:convert';

NotificationListModel notificationListModelFromJson(String str) => NotificationListModel.fromJson(json.decode(str));

String notificationListModelToJson(NotificationListModel data) => json.encode(data.toJson());

class NotificationListModel {
    bool status;
    String message;
    List<ListElement> data;

    NotificationListModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory NotificationListModel.fromJson(Map<String, dynamic> json) => NotificationListModel(
        status: json["status"],
        message: json["message"],
        data: List<ListElement>.from(json["data"].map((x) => ListElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ListElement {
    int id;
    String cardType;
    String image;
    String cardId;
    String status;

    ListElement({
        required this.id,
        required this.cardType,
        required this.image,
        required this.cardId,
        required this.status,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        id: json["id"],
        cardType: json["card_type"],
        image: json["image"],
        cardId: json["card_id"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "card_type": cardType,
        "image": image,
        "card_id": cardId,
        "status": status,
    };
}
