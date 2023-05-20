import 'package:chatgpt/models/params/chat_param.dart';
import 'package:chatgpt/models/params/messages.dart';

class ChatParamHelper {
  ChatParamHelper._();

  static Map<String, dynamic> makeChatParam(String message) {
    return ChatParam(
      model: "gpt-3.5-turbo",
      messages: [
        Message(
          role: "assistant",
          content: message,
        )
      ],
    ).toJson();
  }
}
