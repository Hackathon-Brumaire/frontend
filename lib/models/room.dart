import 'dart:convert';

List<Room> conversationFromJson(String str) =>
    List<Room>.from(json.decode(str).map((x) => Room.fromJson(x)));

String conversationToJson(List<Room> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Room {
  Room({required this.id});

  int id;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
