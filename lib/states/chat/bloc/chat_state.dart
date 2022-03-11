part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<SocketData> history,
    required List<SocketData> feed,
    String? roomId,
  }) = _ChatState;
  factory ChatState.initial() => const ChatState(history: [], feed: []);
  factory ChatState.withRoomId(
          List<SocketData> history, List<SocketData> feed, String roomId) =>
      ChatState(
        history: history,
        feed: feed,
        roomId: roomId,
      );
}
