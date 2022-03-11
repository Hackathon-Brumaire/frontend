part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onConnect() = OnConnect;
  const factory ChatEvent.onSocketEventChange(SocketData d) =
      OnSocketEventChange;
  const factory ChatEvent.onReply(String id) = OnReply;
  const factory ChatEvent.onTransportToVisio() = OnTransportToVisio;
}
