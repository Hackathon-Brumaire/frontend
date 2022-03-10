part of 'chat_bloc.dart';

// @freezed
// class ChatState with _$ChatState {
//   const factory ChatState.initial() = _Initial;
//   const factory ChatState.started() = Started;
//   const factory ChatState.continued() = Continued;
//   const factory ChatState.ended() = Ended;
// }

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<dynamic> history,
    required List<dynamic> feed,
  }) = _ChatState;
  factory ChatState.initial() => const ChatState(history: [], feed: []);
}
