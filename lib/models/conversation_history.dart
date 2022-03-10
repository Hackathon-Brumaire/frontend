// To parse this JSON data, do
//
//     final conversationHistory = conversationHistoryFromJson(jsonString);

import 'dart:convert';

List<ConversationHistory> conversationHistoryFromJson(String str) => List<ConversationHistory>.from(json.decode(str).map((x) => ConversationHistory.fromJson(x)));

String conversationHistoryToJson(List<ConversationHistory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ConversationHistory {
    ConversationHistory({
        required this.message,
        required this.messageType,
    });

    String message;
    String messageType;

    factory ConversationHistory.fromJson(Map<String, dynamic> json) => ConversationHistory(
        message: json["message"],
        messageType: json["messageType"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "messageType": messageType,
    };
}