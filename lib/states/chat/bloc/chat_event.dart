part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onConnect() = OnConnect;
  const factory ChatEvent.onChange(dynamic d) = OnChange;
}