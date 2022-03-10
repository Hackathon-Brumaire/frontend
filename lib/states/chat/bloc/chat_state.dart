part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<SocketData> history,
    required List<SocketData> feed,
  }) = _ChatState;
  factory ChatState.initial() => const ChatState(history: [], feed: []);
}
