import 'package:chatgpt/models/responses/api_error.dart';
import 'package:chatgpt/models/responses/chat_response.dart';
import 'package:chatgpt/models/responses/choice.dart';

extension ApiErrorExt on ApiError {
  String getMessageError() {
    final String errorMessage = message?.trim() ?? "";
    if (errorMessage.isNotEmpty) return errorMessage;
    return code ?? "";
  }
}

extension ChatResponseExt on ChatResponse {
  String? singleMessageContent() {
    final String errorMessage = error?.getMessageError() ?? "";
    if (errorMessage.isNotEmpty) return errorMessage;

    if (choices?.isNotEmpty != true) return null;

    final Choice? choice = choices?.first;
    if (choice == null) return null;

    return choice.message?.content?.trim();
  }
}
