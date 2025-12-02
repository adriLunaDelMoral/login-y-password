// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

import 'package:login_password/domain/entities/users.dart';

List<ResUsersModel> usersFromJson(String str) => List<ResUsersModel>.from(json.decode(str).map((x) => ResUsersModel.fromJson(x)));

String usersToJson(List<ResUsersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResUsersModel {
    final String id;
    final String user;
    final String pass;

    ResUsersModel({
        required this.id,
        required this.user,
        required this.pass,
    });

    factory ResUsersModel.fromJson(Map<String, dynamic> json) => ResUsersModel(
        id: json["id"],
        user: json["user"],
        pass: json["pass"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "pass": pass,
    };
    Users toUserEntity() => Users(
        id: id, 
        username: user, 
        password: pass
    );
}
