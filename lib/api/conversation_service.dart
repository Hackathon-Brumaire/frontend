import 'package:brumaire_frontend/models/conversation.dart';
import 'package:dio/dio.dart';

const String url = "https://brumaire.nospy.fr";

Future<List<Conversation>> getConversations() async {
  var dio = Dio();
  final response = await dio.get(url + '/rooms');
  return List<Conversation>.from(response.data.map((model) => Conversation.fromJson(model)));
}


