part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent {}

@immutable
class UserMessageEvent extends ChatEvent {
  final String message;

  UserMessageEvent(this.message);
}

@immutable
class ResetEvent extends ChatEvent {}
