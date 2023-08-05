// To parse this JSON data, do
//
//     final cardList = cardListFromJson(jsonString);

import 'dart:convert';

CardList cardListFromJson(String str) => CardList.fromJson(json.decode(str));

String cardListToJson(CardList data) => json.encode(data.toJson());

class CardList {
    bool status;
    String message;
    List<CardDataList> data;

    CardList({
        required this.status,
        required this.message,
        required this.data,
    });

    factory CardList.fromJson(Map<String, dynamic> json) => CardList(
        status: json["status"],
        message: json["message"],
        data: List<CardDataList>.from(json["data"].map((x) => CardDataList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class CardDataList {
    int id;
    String cardType;
    String image;
    String cardId;
    String status;

    CardDataList({
        required this.id,
        required this.cardType,
        required this.image,
        required this.cardId,
        required this.status,
    });

    factory CardDataList.fromJson(Map<String, dynamic> json) => CardDataList(
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
