// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';


enum EventType{
    welcome, question, noMoreQuestion
}

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
        nextAnswers: List<NextAnswer>.from(json["nextAnswers"].map((x) => NextAnswer.fromJson(x))),
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
    });

    int id;
    String title;

    factory NextAnswer.fromJson(Map<String, dynamic> json) => NextAnswer(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}
