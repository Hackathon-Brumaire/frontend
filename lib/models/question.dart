// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';

enum EventType { welcome, question, noMoreQuestion, roomIdForVisio }

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  Question({
    required this.id,
    required this.title,
    required this.nextAnswers,
    this.type,
    this.media,
  });

  int id;
  String title;
  List<NextAnswer> nextAnswers;
  dynamic media;
  EventType? type;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        title: json["title"],
        nextAnswers: List<NextAnswer>.from(
            json["nextAnswers"].map((x) => NextAnswer.fromJson(x))),
        media: json["media"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "nextAnswers": List<dynamic>.from(nextAnswers.map((x) => x.toJson())),
        "media": media,
      };
}

class NextAnswer {
  NextAnswer({
    required this.id,
    required this.title,
    this.videoUrl,
  });

  final int id;
  final String title;
  final String? videoUrl;

  factory NextAnswer.fromJson(Map<String, dynamic> json) => NextAnswer(
        id: json["id"],
        title: json["title"],
        videoUrl: json['doc'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        'doc': videoUrl,
      };
}
