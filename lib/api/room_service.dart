import 'package:brumaire_frontend/models/room.dart';
import 'package:brumaire_frontend/models/room_conversation.dart';
import 'package:dio/dio.dart';

const String url = "https://brumaire.nospy.fr";

Future<List<Room>> getRooms() async {
  var dio = Dio();
  final response = await dio.get("$url/rooms");
  return List<Room>.from(response.data.map((model) => Room.fromJson(model)));
}

Future<RoomConversation> getConversationByRoomId(int id) async {
  var dio = Dio();
  final response = await dio.get("$url/conversations/rooms/$id");
  return RoomConversation.fromJson(response.data);
}
