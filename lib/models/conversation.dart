import 'package:brumaire_frontend/models/conversation_history.dart';

class Conversation{
  Conversation({
        required this.histories,
    });

    List<ConversationHistory> histories;
}