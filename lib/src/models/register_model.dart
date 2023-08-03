// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String name;
  String lastname;
  String username;
  String email;
  String mobile;
  String password;
  String passwordConfirmation;

  RegisterModel({
    required this.name,
    required this.lastname,
    required this.username,
    required this.email,
    required this.mobile,
    required this.password,
    required this.passwordConfirmation,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        name: json["name"],
        lastname: json["lastname"],
        username: json["username"],
        email: json["email"],
        mobile: json["mobile"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastname": lastname,
        "username": username,
        "email": email,
        "mobile": mobile,
        "password": password,
        "password_confirmation": passwordConfirmation,
      };
}
