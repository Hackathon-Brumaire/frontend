// To parse this JSON data, do
//
//     final roomConversation = roomConversationFromJson(jsonString);

import 'dart:convert';

RoomConversation roomConversationFromJson(String str) => RoomConversation.fromJson(json.decode(str));

String roomConversationToJson(RoomConversation data) => json.encode(data.toJson());

class RoomConversation {
    RoomConversation({
        required this.id,
        required this.roomId,
        required this.conversationHistorics,
    });

    int id;
    String roomId;
    List<ConversationHistoric> conversationHistorics;

    factory RoomConversation.fromJson(Map<String, dynamic> json) => RoomConversation(
        id: json["id"],
        roomId: json["roomId"],
        conversationHistorics: List<ConversationHistoric>.from(json["conversationHistorics"].map((x) => ConversationHistoric.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "roomId": roomId,
        "conversationHistorics": List<dynamic>.from(conversationHistorics.map((x) => x.toJson())),
    };
}

class ConversationHistoric {
    ConversationHistoric({
        required this.message,
        required this.messageType,
        required this.createdAt,
    });

    String message;
    String messageType;
    DateTime createdAt;

    factory ConversationHistoric.fromJson(Map<String, dynamic> json) => ConversationHistoric(
        message: json["message"],
        messageType: json["messageType"],
        createdAt: DateTime.fromMicrosecondsSinceEpoch(json["createdAt"] *1000),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "messageType": messageType,
        "createdAt": createdAt,
    };
}
