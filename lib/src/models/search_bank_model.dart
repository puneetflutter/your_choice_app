// To parse this JSON data, do
//
//     final searchBankModel = searchBankModelFromJson(jsonString);

import 'dart:convert';

SearchBankModel searchBankModelFromJson(String str) => SearchBankModel.fromJson(json.decode(str));

String searchBankModelToJson(SearchBankModel data) => json.encode(data.toJson());

class SearchBankModel {
    String message;
    BankDetail bankDetail;

    SearchBankModel({
        required this.message,
        required this.bankDetail,
    });

    factory SearchBankModel.fromJson(Map<String, dynamic> json) => SearchBankModel(
        message: json["message"],
        bankDetail: BankDetail.fromJson(json["bank_detail"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "bank_detail": bankDetail.toJson(),
    };
}

class BankDetail {
    // int currentPage;
    List<SearchBankData> data;
    // String firstPageUrl;
    // int from;
    // int lastPage;
    // String lastPageUrl;
    // // List<Link> links;
    // dynamic nextPageUrl;
    // String path;
    // int perPage;
    // dynamic prevPageUrl;
    // int to;
    // int total;

    BankDetail({
        // required this.currentPage,
        required this.data,
        // required this.firstPageUrl,
        // required this.from,
        // required this.lastPage,
        // required this.lastPageUrl,
        // required this.links,
        // required this.nextPageUrl,
        // required this.path,
        // required this.perPage,
        // required this.prevPageUrl,
        // required this.to,
        // required this.total,
    });

    factory BankDetail.fromJson(Map<String, dynamic> json) => BankDetail(
        // currentPage: json["current_page"],
        data: List<SearchBankData>.from(json["data"].map((x) => SearchBankData.fromJson(x))),
        // firstPageUrl: json["first_page_url"],
        // from: json["from"],
        // lastPage: json["last_page"],
        // lastPageUrl: json["last_page_url"],
        // // links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        // nextPageUrl: json["next_page_url"],
        // path: json["path"],
        // perPage: json["per_page"],
        // prevPageUrl: json["prev_page_url"],
        // to: json["to"],
        // total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        // "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        // "first_page_url": firstPageUrl,
        // "from": from,
        // "last_page": lastPage,
        // "last_page_url": lastPageUrl,
        // // "links": List<dynamic>.from(links.map((x) => x.toJson())),
        // "next_page_url": nextPageUrl,
        // "path": path,
        // "per_page": perPage,
        // "prev_page_url": prevPageUrl,
        // "to": to,
        // "total": total,
    };
}

class SearchBankData {
    int id;
    String bankName;
    String ifscCode;

    SearchBankData({
        required this.id,
        required this.bankName,
        required this.ifscCode,
    });

    factory SearchBankData.fromJson(Map<String, dynamic> json) => SearchBankData(
        id: json["id"],
        bankName: json["bank_name"],
        ifscCode: json["ifsc_code"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "bank_name": bankName,
        "ifsc_code": ifscCode,
    };
}


