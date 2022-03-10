// To parse this JSON data, do
//
//     final conversation = conversationFromJson(jsonString);

import 'dart:convert';

List<Conversation> conversationFromJson(String str) => List<Conversation>.from(json.decode(str).map((x) => Conversation.fromJson(x)));

String conversationToJson(List<Conversation> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Conversation {
    Conversation({
        required this.id
    });

    int id;


    factory Conversation.fromJson(Map<String, dynamic> json) => Conversation(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}