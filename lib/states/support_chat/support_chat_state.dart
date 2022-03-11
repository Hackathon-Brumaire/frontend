part of 'support_chat_bloc.dart';

@freezed
class SupportChatState with _$SupportChatState {
  const SupportChatState._();
const factory SupportChatState({
  required List<SocketData> history,
  required List<SocketData> feed,
}) = _SupportChatState;

factory SupportChatState.initial() => const SupportChatState(history: [], feed: []);
}

