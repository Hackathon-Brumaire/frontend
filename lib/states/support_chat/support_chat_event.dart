part of 'support_chat_bloc.dart';

@freezed
class SupportChatEvent with _$SupportChatEvent {
  const factory SupportChatEvent.onConnect(int id) = OnConnect;
  const factory SupportChatEvent.onSocketEventChange(SocketData d) = OnSocketEventChange;
  const factory SupportChatEvent.onReply(String id) = OnReply;
}