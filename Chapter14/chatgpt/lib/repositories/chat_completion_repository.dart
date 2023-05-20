import 'dart:convert';

import 'package:chatgpt/models/params/chat_param_helper.dart';
import 'package:chatgpt/models/responses/chat_response_ext.dart';
import 'package:chatgpt/models/responses/chat_response.dart';
import 'package:chatgpt/repositories/chat_completion_request.dart';
import 'package:chatgpt/repositories/open_ai_repository.dart';

class ChatCompletionRepository extends OpenAIRepository
    with ChatCompletionRequest {
  @override
  String getPath() => "/v1/chat/completions";

  @override
  Future<String?> chatCompletion(String userMessage) async {
    final param = ChatParamHelper.makeChatParam(userMessage);
    final response = await post(body: jsonEncode(param));
    final jsonMap = jsonDecode(utf8.decode(response.bodyBytes));

    final chatResponse = ChatResponse.fromJson(jsonMap);
    return chatResponse.singleMessageContent();
  }
}
