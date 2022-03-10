// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.text,
        required this.createdAt,
    });

    String text;
    DateTime createdAt;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        text: json["text"],
        createdAt: DateTime.fromMicrosecondsSinceEpoch(json["createdAt"] *1000),
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "createdAt": createdAt,
    };
}