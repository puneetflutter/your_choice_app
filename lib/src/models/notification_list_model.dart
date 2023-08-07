// To parse this JSON data, do
//
//     final notificationListModel = notificationListModelFromJson(jsonString);

import 'dart:convert';

ListElement notificationListModelFromJson(String str) => ListElement.fromJson(json.decode(str));

String notificationListModelToJson(ListElement data) => json.encode(data.toJson());

class ListElement {
    int status;
    String message;
    List<ListElement> list;

    ListElement({
        required this.status,
        required this.message,
        required this.list,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        status: json["status"],
        message: json["message"],
        list: List<ListElement>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(list.map((x) => x)),
    };
}
