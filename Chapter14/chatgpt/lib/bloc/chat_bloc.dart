import 'package:chatgpt/repositories/chat_completion_repository.dart';
import 'package:chatgpt/repositories/chat_completion_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatCompletionRequest _completionRequest = ChatCompletionRepository();
  ChatBloc() : super(ChatInitial()) {
    on<ResetEvent>((event, emit) {
      emit(ChatInitial());
    });

    on<UserMessageEvent>((event, emit) async {
      emit(TypingState(event.message));
      try {
        final String? messageRely =
            await _completionRequest.chatCompletion(event.message);
        emit(
          ResponseState(
            messageRely: messageRely,
            userMessage: event.message,
          ),
        );
      } catch (e) {
        emit(
          ErrorResponseState(
            errorMessage: e.toString(),
            userMessage: event.message,
          ),
        );
      }
    });
  }
}
