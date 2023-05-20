import 'messages.dart';

class ChatParam {
  String? model;
  List<Message>? messages;

  ChatParam({
    this.model,
    this.messages,
  });

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'messages': messages,
    };
  }

  @override
  String toString() => "ChatParam(model: $model,messages: $messages)";

  @override
  int get hashCode => Object.hash(model, messages);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatParam &&
          runtimeType == other.runtimeType &&
          model == other.model &&
          messages == other.messages;
}
