import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_data.freezed.dart';

@freezed
class SocketData with _$SocketData {
  const SocketData._();

  const factory SocketData({
    int? id,
    String? title,
    String? text,
    DateTime? createdAt,
    List<NextAnswerData>? nextAnswers,
    dynamic media,
    EventType? type,
  }) = _SocketData;

  factory SocketData.fromQuestion(Question q) => SocketData(
      id: q.id,
      title: q.title,
      nextAnswers: q.nextAnswers.map((e) => NextAnswerData.from(e)).toList(),
      type: EventType.question,
      media: q.media);

  factory SocketData.fromWelcome(Welcome w) => SocketData(text:  w.text, createdAt: w.createdAt, type: EventType.welcome);
  factory SocketData.fromNoMoreQuestion() => SocketData(title: "Voulez-vous être mis en relation avec un conseiller ?", type: EventType.noMoreQuestion);
}

@freezed
class NextAnswerData with _$NextAnswerData {
  const NextAnswerData._();

  const factory NextAnswerData({
    required int id,
    required String title,
    required bool selected,
  }) = _NextAnswerData;

  factory NextAnswerData.from(NextAnswer n) =>
      NextAnswerData(id: n.id, title: n.title, selected: false);
}