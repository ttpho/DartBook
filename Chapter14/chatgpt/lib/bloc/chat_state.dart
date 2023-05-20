part of 'chat_bloc.dart';

@immutable
abstract class ChatState {}

@immutable
class ChatInitial extends ChatState {}

@immutable
class ResponseState extends ChatState {
  final String? messageRely;
  final String userMessage;

  ResponseState({
    required this.messageRely,
    required this.userMessage,
  });
}

@immutable
class TypingState extends ChatState {
  final String message;
  TypingState(this.message);
}

class ErrorResponseState extends ChatState {
  final String? errorMessage;
  final String userMessage;

  ErrorResponseState({
    required this.errorMessage,
    required this.userMessage,
  });
}
